import Vue from 'vue';
import Vuex from 'vuex';

Vue.use(Vuex);

export const store = new Vuex.Store({
    state: {
        articles: null,
    },
    getters: {
        ARTICLES: state => {
            return state.articles;
        },
    },
    mutations: {
        SET_ARTICLES: (state, payload) => {
            state.articles = payload;
        },
    },
    actions: {
        GET_ARTICLES: async (context, payload) => {
            let {data} = await axios.get('/api/articles');
            context.commit('SET_ARTICLES', data);
        },

    },
});
