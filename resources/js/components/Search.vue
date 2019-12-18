<template>
    <div>
        <input type="text" placeholder="what are you looking for?" v-model="query" v-on:keyup="autoComplete"
               class="form-control">
        <div class="panel-footer" v-if="articles.length">
            <ul class="list-group">
                <li class="list-group-item" v-for="article in articles">
                    <div class="pb-2 text-right">
                        <font-awesome-icon style="color: #ccc;" icon="calendar-alt"></font-awesome-icon>
                        <small>{{ article.created_at }}</small>
                        <font-awesome-icon style="color: #ccc;" icon="bars"></font-awesome-icon>
                        <small >{{ article.title }}</small>
                    </div>
                    <router-link :to="{name: 'article', params: {id: article.id}}">
                        <h4 class="card-title">{{ article.title }}</h4>
                    </router-link>
                    <hr class="my-4">
                    <p class="card-text">{{ article.body }}</p>
                </li>
            </ul>
        </div>
    </div>
</template>

<script>
    export default {
        name: 'Search',
        data() {
            return {
                query: '',
                articles: []
            }
        },
        methods: {
            autoComplete() {
                this.articles = [];
                if (this.query.length > 2) {
                    axios.get('/api/search', {params: {query: this.query}}).then(response => {
                        this.articles = response.data;
                    });
                }
            }
        }
    }
</script>

<style>
    .modal-backdrop {
        background: rgba(0, 0, 0, 0.5);
    }
</style>

