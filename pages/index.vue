<template>
  <div class="container">
    <MeCard :document="doc" />
  </div>
</template>

<script lang="ts">
import Vue from 'vue'

export default Vue.extend({
  async asyncData( app ) {
    const doc = await app.$content('hu', 'me').fetch()
    return {
      doc
    }
  }
})
</script>

<style lang="scss" scoped>
.container {
  padding: 50px;
}
</style>