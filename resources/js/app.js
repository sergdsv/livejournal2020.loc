/**
 * First we will load all of this project's JavaScript dependencies which
 * includes Vue and other libraries. It is a great starting point when
 * building robust, powerful web applications using Vue and Laravel.
 */

require('./bootstrap');

window.Vue = require('vue');
import {store} from './store';

import VueRouter from 'vue-router';
Vue.use(VueRouter);
import Articles from './components/Articles.vue';
import Article from './components/Article.vue';
import Comments from './components/Comments.vue';
const router = new VueRouter({
    mode: 'history',
    routes: [
        {
            path: '/',
            name: 'articles',
            component: Articles
        },
        {
            path: '/comments',
            name: 'comments',
            component: Comments
        },
        {
            path: '/articles/:id',
            name: 'article',
            component: Article
        },

    ],
});

import BootstrapVue from 'bootstrap-vue';
Vue.use(BootstrapVue);

import { library } from '@fortawesome/fontawesome-svg-core';
import { faEdit, faPlus, faPen, faArrowAltCircleLeft } from '@fortawesome/free-solid-svg-icons';
import { faCopyright, faTrashAlt } from '@fortawesome/free-regular-svg-icons';
import { FontAwesomeIcon } from '@fortawesome/vue-fontawesome';
library.add(faEdit, faCopyright, faPlus, faPen, faTrashAlt, faArrowAltCircleLeft);
Vue.component('font-awesome-icon', FontAwesomeIcon);

// Vue.component('example-component', require('./components/ExampleComponent.vue').default);

const app = new Vue({
    store,
    router,
    el: '#app',
});
