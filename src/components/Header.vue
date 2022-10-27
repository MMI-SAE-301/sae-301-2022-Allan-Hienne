<script setup lang="ts">
</script>

<template>
    <div id="app">
      <div class="">
        <div class="flex justify-between mx-8 mt-4" id="navbarColor01">
          <router-link class="" to="/"><img src="/public/TikTakLogo.svg" alt="tiktak" class="w-56"></router-link>
          <router-link class="" to="/perso"><img src="/public/user.svg" alt="user" class="w-12"></router-link>
          <router-link class="text-red-600 underline" to="/perso">
            lien vers
            <code class="font-mono">/src/pages/perso</code>
          </router-link>
        </div>
      </div>
    </div>
</template>