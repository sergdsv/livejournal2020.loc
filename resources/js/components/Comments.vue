<template>
    <div class="container pt-2 pr-0">
        <ul class="pl-0">
            <li class="font-li">
                {{ comment.body }}
                <div class="pt-2" v-if="formReply">
                    <form @submit.prevent="addComment">
                        <textarea v-model="bodyComment" class="form-control" rows="5"></textarea>
                        <div class="text-right pt-2">
                            <button type="submit" class="btn btn-primary">
                                <font-awesome-icon icon="plus"></font-awesome-icon> Add</button>
                        </div>
                    </form>
                </div>
                <div class="text-right">
                    <button @click="formReply = !formReply" class="btn btn-link btn-reply">Reply</button>
                </div>
                <comments v-for="(comment, index) in comment.replies" :key="index" :comment="comment"></comments>
            </li>
        </ul>
    </div>
</template>

<script>
    export default {
        props: ['comment'],
        name: 'Comments',
        data(){
            return{
                formReply: false,
                bodyComment: ''
            }
        },
        methods: {
            addComment() {
                axios({method: 'post', url: '/api/comments', data: {
                        body: this.bodyComment,
                        post_id: this.comment.post_id,
                        user_id: '1',
                        parent_id: this.comment.id
                    } })
                    .then(response => {
                            if(this.comment.replies === undefined){
                                this.comment["replies"] = [response.data];
                            } else {
                                this.comment.replies.push(response.data);
                            }
                        this.formReply = false;
                        this.bodyComment = '';
                    })
            }
        },

    }
</script>

<style scoped>
    .font-li{
        font-size: 12px;
        list-style-type: none;
    }

    .btn-reply{
        font-size: 12px;
    }
</style>


