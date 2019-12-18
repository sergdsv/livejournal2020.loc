<template>
    <div class="container col-md-5 pt-3">
        <div class="card">
                <div class="card-header">
                    <h3><font-awesome-icon icon="edit"></font-awesome-icon> LiveJournal2020</h3>
                </div>
                <div class="p-3">
                    <form @submit.prevent="addArticle" class="form-group">
                        <category :categoryId.sync="categoryId"></category>
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
                    <div class="form-group">
                        <Search></Search>
                    </div>
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
                            <div class="pb-2 text-right">
                                <font-awesome-icon style="color: #ccc;" icon="calendar-alt"></font-awesome-icon>
                                <small>{{ article.created_at }}</small>
                                <font-awesome-icon style="color: #ccc;" icon="bars"></font-awesome-icon>
                                <small >{{ article.category.title }}</small>
                            </div>
                            <router-link :to="{name: 'article', params: {id: article.id}}">
                                <h4 class="card-title">{{ article.title }}</h4>
                            </router-link>
                            <hr class="my-4">
                            <p class="card-text">{{ article.body }}</p>
                            <div class="text-right">
                                <div>
                                    <button type="button" @click="editArticle(article)"
                                        class="btn btn-success"
                                        data-toggle="modal"
                                        data-target="#ArticleEditModal"
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
        <div class="modal fade" id="ArticleEditModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
            <div class="modal-dialog modal-dialog-centered" role="document">
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
                                <textarea class="form-control" v-model="bodyEdit" id="editBody" rows="5" placeholder="Input body"></textarea>
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
    import Category from './Category';
    import Search from './Search';
    export default {
        name: 'Articles',
        components:{
            Category,
            Search
        },
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
                storeName: '',
                categoryId: ''

            }
        },
        methods: {
            addArticle(){
                let formData = new FormData();
                formData.append('title', this.title);
                formData.append('body', this.body);
                formData.append('category_id', this.categoryId);
                axios.post('/api/articles', formData)
                    .then(response => {
                        console.log(response.data);
                        this.articles.unshift(response.data);
                        this.title = '';
                        this.body = '';
                        this.categoryId = '';
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
                .then(confirmDelete => {
                     if (confirmDelete){
                         axios({method: 'delete', url: '/api/articles/' + id })
                             .then(response => {
                                 this.articles = this.articles.filter(item =>
                                     item.id !== response.data)
                             })
                     }
                });
            },
            editArticle(article){
                this.titleEdit = article.title;
                this.bodyEdit = article.body;
                this.idEdit = article.id;
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
            },
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

