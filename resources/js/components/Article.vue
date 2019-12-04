<template>
    <div class="container col-md-5 pt-3">
        <div class="card">
            <div class="card-header">
                <h3><font-awesome-icon icon="edit"></font-awesome-icon> LiveJournal2020</h3>
            </div>
            <div class="card m-1">
                <div class="card-body">
                    <h4 class="card-title">{{ article.title }}</h4>
                    <hr class="my-4">
                    <p class="card-text">{{ article.body }}</p>
                    <div class="d-flex justify-content-between">
                        <small class="pt-3">{{ article.created_at }}</small>
                        <div>
                            <router-link :to="{ name: 'articles' }"
                                    class="btn btn-success"
                            ><font-awesome-icon icon="arrow-alt-circle-left"></font-awesome-icon> Back</router-link>
                        </div>
                    </div>
                    <comments class="pl-0" v-for="(comment, index) in article.comments" :key="index" :comment="comment"></comments>
                </div>
            </div>
            <div class="card-footer">
                <h5 class="text-right"><font-awesome-icon :icon="['far', 'copyright']"></font-awesome-icon> LiveJournal2020</h5>
            </div>
        </div>
    </div>
</template>

<script>
    import Comments from "./Comments";
    export default {
        name: 'Article',
        components: {
            Comments
        },
        data(){
            return{
                article: ''
            }
        },
        mounted() {
            axios
                .get('/api' + this.$route.path)
                .then(response =>{
                    this.article = response.data
                })
        }

    }
</script>

<style>
    .modal-backdrop {
        background: rgba(0, 0, 0, 0.5);
    }
</style>

