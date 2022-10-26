<script setup lang="ts">
import MontreSvg from "@/components/MontreSvg.vue";
import type { Montre } from "@/types";
</script>



<template>
    <div class="carousel w-full p-4 space-x-4 bg-neutral rounded-box">
        <div class="carousel-item">
            <img src="/public/Montre1.svg" class="w-96 rounded-box" />
        </div>
        <div class="carousel-item">
            <img src="/public/Montre2.svg" class="w-96 rounded-box" />
        </div>
        <div class="carousel-item">
            <img src="/public/Montre3.svg" class="w-96 rounded-box" />
        </div>
        <div class="carousel-item">
            <img src="/public/Montre4.svg" class="w-96 rounded-box" />
        </div>
        <div class="carousel-item">
            <img src="/public/Montre5.svg" class="w-96 rounded-box" />
        </div>
        <div class="carousel-item">
            <img src="/public/Montre6.svg" class="w-96 rounded-box" />
        </div>
    </div>
</template>