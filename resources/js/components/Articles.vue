<template>
    <div class="container col-md-4 pt-3">
        <div class="card">
            <div class="p-1">
            <form class="form-group">
                <div class="form-group">
                    <label for="title"><h4>Titile</h4></label>
                    <input type="text" class="form-control" id="title" placeholder="Input title">
                </div>

                <div class="form-group">
                    <label for="body"><h4>Body</h4></label>
                    <textarea class="form-control" id="body" rows="3" placeholder="Input body"></textarea>
                </div>
                <div class="text-right">
                    <button type="button" class="btn btn-primary">Add</button>
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
                            <button type="button" class="btn btn-warning">Success</button>
                            <button type="button" class="btn btn-danger">Danger</button>
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
                currentPage: 1,
                perPage: 5,
                articles: [],
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


