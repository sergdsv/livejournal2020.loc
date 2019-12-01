<template>
    <div class="container col-md-5 pt-3">
        <div class="card">
                <div class="card-header">
                    <h3><font-awesome-icon icon="edit"></font-awesome-icon> LiveJournal2020</h3>
                </div>
                <div class="p-3">
                    <form @submit.prevent="addArticle" class="form-group">
                        <div class="form-group">
                            <label for="title"><h4>Title</h4></label>
                            <input type="text" v-model="title" class="form-control" id="title" placeholder="Input title" required>
                        </div>
                        <div class="form-group">
                            <label for="body"><h4>Body</h4></label>
                            <textarea class="form-control" v-model="body" id="body" rows="4" placeholder="Input body" required></textarea>
                        </div>
                        <div class="text-right">
                            <button type="submit" class="btn btn-primary">
                                <font-awesome-icon icon="plus"></font-awesome-icon> Add</button>
                        </div>
                    </form>
                    <b-pagination
                        v-model="currentPage"
                        :total-rows="totalRows"
                        :per-page="perPage"
                        aria-controls="my-table"
                    ></b-pagination>
                </div>
                <div v-for="(article, index) in lists" :key="index">
                    <div class="card m-1">
                        <div class="card-body">
                            <h4 class="card-title">{{ article.title }}</h4>
                            <hr class="my-4">
                            <p class="card-text">{{ article.body }}</p>
                            <div class="d-flex justify-content-between">
                                    <small class="pt-3">{{ article.created_at }}</small>
                                <div>
                                    <button type="button" @click="editArticle(article.id)"
                                        class="btn btn-success"
                                        data-toggle="modal"
                                        data-target="#exampleModal"
                                        ><font-awesome-icon icon="pen"></font-awesome-icon> Edit</button>
                                    <button type="button" @click="deleteArticle(article.id)"
                                        class="btn btn-danger"
                                        ><font-awesome-icon :icon="['far', 'trash-alt']"></font-awesome-icon> Delete</button>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            <div class="p-3">
                <b-pagination
                    v-model="currentPage"
                    :total-rows="totalRows"
                    :per-page="perPage"
                    aria-controls="my-table"
                ></b-pagination>
            </div>
            <div class="card-footer">
                <h5 class="text-right"><font-awesome-icon :icon="['far', 'copyright']"></font-awesome-icon> LiveJournal2020</h5>
            </div>
        </div>
        <!-- Modal -->
        <div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="exampleModalLabel">Edit article</h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <div class="modal-body">
                        <form class="form-group">
                            <div class="form-group">
                                <label for="editTitle"><h4>Titile</h4></label>
                                <input type="text" v-model="titleEdit" value="titleEdit" class="form-control" id="editTitle" placeholder="Input title">
                            </div>

                            <div class="form-group">
                                <label for="editBody"><h4>Body</h4></label>
                                <textarea class="form-control" v-model="bodyEdit" id="editBody" rows="3" placeholder="Input body"></textarea>
                            </div>
                        </form>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                        <button @click.prevent="updateArticle" type="submit" class="btn btn-primary" data-dismiss="modal">Save changes</button>
                    </div>
                </div>
            </div>
        </div>
    </div>
</template>

<script>
    export default {
        name: 'Articles',
        data(){
            return{
                title: '',
                body: '',
                currentPage: 1,
                perPage: 5,
                articles: [],
                idEdit: '',
                titleEdit: '',
                bodyEdit: '',
            }
        },
        methods: {
            addArticle(){
                let formData = new FormData();
                formData.append('title', this.title);
                formData.append('body', this.body);
                axios.post('/api/articles', formData)
                    .then(response => {
                        this.articles.unshift(response.data);
                        this.title = '';
                        this.body = '';
                        this.currentPage = 1;
                        this.$bvModal.msgBoxOk('New article successfully added!!!', {
                            title: 'Add successfully!',
                            okVariant: 'success',
                            okTitle: 'OK',
                            footerClass: 'p-2',
                            hideHeaderClose: false,
                            centered: true
                        })
                    })
            },
            deleteArticle(id){
                this.$bvModal.msgBoxConfirm('Please confirm that you want to delete everything.', {
                    title: 'Please Confirm',
                    okVariant: 'danger',
                    okTitle: 'YES',
                    cancelTitle: 'NO',
                    footerClass: 'p-2',
                    hideHeaderClose: false,
                    centered: true
                })
                .then(value => {
                     if (value){
                         axios({method: 'delete', url: '/api/articles/' + id })
                             .then(response => {
                                 this.articles = this.articles.filter(item =>
                                     item.id !== response.data)
                             })
                     }
                });
            },
            editArticle(id){
                let article = this.articles.filter(item =>
                    item.id === id);
                this.titleEdit = article[0].title;
                this.bodyEdit = article[0].body;
                this.idEdit = id
            },
            updateArticle(){

                axios({method: 'put', url: '/api/articles/' + this.idEdit, data: {
                        title: this.titleEdit,
                        body: this.bodyEdit
                    } })
                    .then(response => {
                        if(response.data){
                            let articleId = this.articles.findIndex(item =>
                                item.id === this.idEdit);
                            this.articles[articleId].title = this.titleEdit;
                            this.articles[articleId].body = this.bodyEdit;
                            this.$bvModal.msgBoxOk('Article successfully edited!!!', {
                                title: 'Edit successfully!',
                                okVariant: 'success',
                                okTitle: 'OK',
                                footerClass: 'p-2',
                                hideHeaderClose: false,
                                centered: true
                            })
                        }

                    })
            }
        },
        computed: {
            lists () {
                return this.articles.slice(
                    (this.currentPage - 1) * this.perPage,
                    this.currentPage * this.perPage);
            },
            totalRows () {
                return this.articles.length
            }
        },
        mounted() {
            axios
                .get('/api/articles')
                .then(response => {
                    this.articles = response.data
                });
        },
    }
</script>

<style>
    .modal-backdrop {
        background: rgba(0, 0, 0, 0.5);
    }
</style>

