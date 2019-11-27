<template>
    <div class="container col-md-4 pt-3">
        <div class="card">
            <div class="p-3">
            <form @submit.prevent="addArticle" class="form-group">
                <div class="form-group">
                    <label for="title"><h4>Titile</h4></label>
                    <input type="text" v-model="title" class="form-control" id="title" placeholder="Input title">
                </div>

                <div class="form-group">
                    <label for="body"><h4>Body</h4></label>
                    <textarea class="form-control" v-model="body" id="body" rows="3" placeholder="Input body"></textarea>
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
                        <p class="card-text">{{ article.body }}</p>
                        <small>{{ article.created_at }}</small>
                        <div class="text-right">
                            <button type="button" class="btn btn-warning">Edit</button>
                            <button type="button" @click="deleteArticle(article.id)" class="btn btn-danger">Delete</button>
                        </div>
                    </div>
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
            }
        },
        methods: {
            addArticle(){
                let formData = new FormData();
                formData.append('title', this.title);
                formData.append('body', this.body);
                axios.post('/api/articles', formData)
                    .then(response => {
                        this.articles.push(response.data);
                    })
            },
            deleteArticle(id){
                axios({method: 'delete', url: '/api/articles/' + id })
                    .then(response => {
                        this.articles.pop(item => {
                            return item.id = response.data
                        })
                    })
            }
        },
        computed: {
            lists () {
                return this.articles.slice(
                    (this.currentPage - 1) * this.perPage,
                    this.currentPage * this.perPage
                )
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


