<template>
    <div class="card">
    <figure class="md:flex bg-gray-100 rounded-xl p-8 md:p-0">
        <img class="w-32 h-32 md:w-48 md:h-auto md:rounded-none rounded-full mx-auto" src="~/assets/my_avatar.png" alt="" height="192" width="192">
        <div class="pt-6 md:p-8 text-center md:text-left space-y-4">
            <blockquote>
                <p class="text-lg font-semibold">
                    <nuxt-content class="document" :document="document" />
                </p>
            </blockquote>
            <figcaption class="font-medium">
              <div class="text-cyan-600">
                {{ document.name }}
                </div>
                <div class="text-gray-500">
                    {{ document.jd }}
                </div>
            </figcaption>
        </div>
    </figure>
    </div>
</template>

<script lang="ts">
import Vue from 'vue'
export default Vue.extend({
    props: ['document']
})
</script>

<style lang="scss" scoped>
.card {
    max-width: 512px;
    max-height: 204px;
}
</style>