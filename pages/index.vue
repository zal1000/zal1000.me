<template>
  <div class="container">
    <div>
      <Logo />
      <h1 class="title">{{ title }}</h1>
      <div class="links">
        <a
          href="https://nuxtjs.org/"
          target="_blank"
          rel="noopener noreferrer"
          class="button--green"
        >
          Documentation
        </a>
        <a
          href="https://github.com/nuxt/nuxt.js"
          target="_blank"
          rel="noopener noreferrer"
          class="button--grey"
        >
          GitHub
        </a>
      </div>
    </div>
  </div>
</template>

<script lang="ts">
import Vue from 'vue'
import firebase from 'firebase'
import 'firebase/firestore'

try {
  firebase.initializeApp({
    apiKey: 'AIzaSyBmRS5Yy-1ktWXNsYjk9mQ8Rs9RhmQy600',
    authDomain: 'zal1000.firebaseapp.com',
    databaseURL: 'https://zal1000.firebaseio.com',
    projectId: 'zal1000',
    storageBucket: 'zal1000.appspot.com',
    messagingSenderId: '512279358183',
    appId: '1:512279358183:web:749d4c93b6f1bccb541042',
    measurementId: 'G-5YG80J6YWM',
  })
} catch (error) {}

const db = firebase.firestore()

export default Vue.extend({
  data() {
    return {
      title: 'Loading...',
      desc: 'Loading...',
    }
  },
  head() {
    return {
      title: this.title,
      meta: [
        {
          hid: 'description',
          name: 'og:description',
          content: this.desc,
        },
      ],
    }
  },
  async created() {
    const ref = db.collection('test').doc('test')
    const doc = await ref.get()
    this.title = doc.data()?.title ? doc.data()?.title : 'Error'
    this.desc = doc.data()?.desc ? doc.data()?.desc : 'Error'
  },
})
</script>

<style>
.container {
  margin: 0 auto;
  min-height: 100vh;
  display: flex;
  justify-content: center;
  align-items: center;
  text-align: center;
}

.title {
  font-family: 'Quicksand', 'Source Sans Pro', -apple-system, BlinkMacSystemFont,
    'Segoe UI', Roboto, 'Helvetica Neue', Arial, sans-serif;
  display: block;
  font-weight: 300;
  font-size: 100px;
  color: #35495e;
  letter-spacing: 1px;
}

.subtitle {
  font-weight: 300;
  font-size: 42px;
  color: #526488;
  word-spacing: 5px;
  padding-bottom: 15px;
}

.links {
  padding-top: 15px;
}
</style>
