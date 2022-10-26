<template>
  <div id="app">
    <div class="">
      <div class="flex justify-between mx-8 mt-4" id="navbarColor01">
        <router-link class="" to="/accueil"><img src="/public/TikTakLogo.svg" alt="tiktak" class="w-56"></router-link>
        <router-link class="" to="/culture"><img src="/public/user.svg" alt="user" class="w-12"></router-link>
      </div>
    </div>
    <router-view />
  </div>

  <!-- Affiche les pages -->
  <Suspense>
    <router-view class="m-2 border-2 p-2" />
  </Suspense>
</template>

<script setup lang="ts">
import { Bars3Icon } from "@heroicons/vue/20/solid";
</script>
