<script setup lang="ts">
import MontreSvg from "@/components/MontreSvg.vue";
import type { Montre } from "@/types";
import carousel from "../components/carousel.vue";
</script>



<template>
    <carousel />

    <div class="flex">
        <h1 class="uppercase bold bandeau okine_bold">
            Restez Connecté
        </h1>
        <h1 class="uppercase bold bandeau okine_bold_outline">
            Restez Connecté
        </h1>
        <h1 class="uppercase bold bandeau okine_bold">
            Restez Connecté
        </h1>
        <h1 class="uppercase bold bandeau okine_bold_outline">
            Restez Connecté
        </h1>
    </div>

</template>
<style>

.okine_bold {
    font-family: 'made_okine_sans_personal_uBlk';
}

.okine_bold_outline{
    font-family: 'made_okine_sans_persBdoutline';
}

.bandeau{
    font-size: 42px;
}
</style>