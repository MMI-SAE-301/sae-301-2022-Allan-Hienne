<script setup lang="ts">
//@ts-nocheck
import {supabase, user} from '../supabase'
import bouton from "@/components/bouton.vue";

</script>

<template class="">

<div class="flex">
        <h1 class="uppercase bold bandeau okine_bold text-black">
            Restez Connecté
        </h1>
        <h1 class="uppercase bold bandeau okine_bold_outline text-black">
            Restez Connecté
        </h1>
        <h1 class="uppercase bold bandeau okine_bold text-black">
            Restez Connecté
        </h1>
        <h1 class="uppercase bold bandeau okine_bold_outline text-black">
            Restez Connecté
        </h1>
    </div>
    <div class="flex justify-center ">


        <div class="flex bg-black px-8 py-4 justify-center gap-10 items-center mt-8 mb-16 rounded-3xl">
            <div>
                <p class="font-cano uppercase text-3xl bold text-white">
                    Connectez-vous
                </p>
                <bouton libelle="Authentification avec Google" class="mb-3 mt-16 rounded-2xl w-96 h-14 bg-white text-black okine_regular hover:bg-slate-200" @pointerdown="supabase.auth.signIn({ provider: 'google'})" /><br />
    <bouton libelle="Authentification avec Facebook" class="mb-3 mt-4 rounded-2xl w-96 h-14 bg-blue-600 text-white okine_regular hover:bg-blue-800" @pointerdown="supabase.auth.signIn({ provider: 'facebook'})"  /><br />
    <bouton libelle="Deconnexion" class="border-2 mt-3 mb-28 rounded-2xl w-36 h-14 text-white okine_regular hover:bg-white hover:text-black" @pointerdown="supabase.auth.signOut()" /><br />
                <br />
                <label id="status"></label>
            </div>
            <img src="../assets/img/Montre3.svg" alt="" class="w-540 my-4 rounded-3xl">
        </div>

    </div>

</template>

<style>
.okine_bold {
    font-family: 'made_okine_sans_personal_uBlk';
}

.okine_bold_outline {
    font-family: 'made_okine_sans_persBdoutline';
}

.okine_medium {
    font-family: 'made_okine_sans_personal_usMd';
}

.bandeau {
    font-size: 42px;
}

.okine_regular {
    font-family: 'made_okine_sans_personal_usRg';
}
</style>