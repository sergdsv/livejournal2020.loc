<template>
    <div>
        <div class="form-group">
            <label for="category"><h4>Category</h4></label>
            <select id="category" v-on:change="$emit('update:categoryId', category)" v-model="category" class="form-control">
                <option v-for="(category, index) in categories" :key="index" :value="category.id">{{ category.title }}</option>
            </select>
        </div>
    </div>
</template>

<script>
    export default {
        name: 'Category',
        data(){
            return{
                category: '',
                categories: ''
            }
        },
        mounted() {
            axios
                .get('/api/categories')
                .then(response =>{
                    this.categories = response.data;
                })
        },
        methods: {
            clearCategorySelect(){
                console.log('dsv')
            }
        }

    }
</script>

<style>
    .modal-backdrop {
        background: rgba(0, 0, 0, 0.5);
    }
</style>

