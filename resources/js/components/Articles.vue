<template>
    <div class="container col-md-5 pt-3">
        <div class="card">
            <div class="p-3">
                <form @submit.prevent="addArticle" class="form-group">
                    <div class="form-group">
                        <label for="title"><h4>Titile</h4></label>
                        <input type="text" v-model="title" class="form-control" id="title" placeholder="Input title" required>
                    </div>

                    <div class="form-group">
                        <label for="body"><h4>Body</h4></label>
                        <textarea class="form-control" v-model="body" id="body" rows="4" placeholder="Input body" required></textarea>
                    </div>
                    <div class="text-right">
                        <button type="submit" class="btn btn-primary">Add</button>
                    </div>
                </form>

                <b-pagination
                    v-model="currentPage"
                    :total-rows="totalRows"
                    :per-page="perPage"
                    aria-controls="my-table"
                ></b-pagination>
                <div id="my-table" v-for="(article, index) in lists" :key="index">
                    <div class="card">
                        <div class="card-body">
                            <h4 class="card-title">{{ article.title }}</h4>
                            <hr class="my-4">
                            <p class="card-text">{{ article.body }}</p>
                            <div class="d-flex justify-content-between">
                                    <small class="pt-3">{{ article.created_at }}</small>
                                <div>
                                    <button type="button" @click="editArticle(article.id)" class="btn btn-warning" data-toggle="modal" data-target="#exampleModal">Edit</button>
                                    <button type="button" @click="deleteArticle(article.id)" class="btn btn-danger">Delete</button>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
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
                        <form @submit.prevent="addArticle" class="form-group">
                            <div class="form-group">
                                <label for="title"><h4>Titile</h4></label>
                                <input type="text" v-model="titleEdit" value="titleEdit" class="form-control" id="title" placeholder="Input title">
                            </div>

                            <div class="form-group">
                                <label for="body"><h4>Body</h4></label>
                                <textarea class="form-control" v-model="bodyEdit" id="body" rows="3" placeholder="Input body"></textarea>
                            </div>
                        </form>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                        <button type="button" class="btn btn-primary">Save changes</button>
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
                 this.titleEdit = article[0].title
                this.bodyEdit = article[0].body;
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

