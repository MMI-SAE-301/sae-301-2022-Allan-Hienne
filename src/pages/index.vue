<script setup lang="ts">
import type { Montre } from "@/types"
import { colors } from "@/types"
import { ref } from "vue";
import { useRouter } from "vue-router";
import { supabase } from "@/supabase";
import MontreSvg from "../components/MontreSvg.vue";
import carousel from "../components/carousel.vue";

let user = supabase.auth.user()
const router = useRouter();

const props = defineProps<{
    data?: Montre;
    id?: string;
}>();
//@ts-ignore
async function upsertMontre(dataForm, node) {
    const { data, error } = await supabase.from("Montre").upsert(dataForm);
    if (error) node.setErrors([error.message]);
    else {
        node.setErrors([]);
        router.push({ name: "montre-edit-id", params: { id: data[0].id } });
    }
}

const montre = ref<Montre>(props.data ?? {});
</script>



<template>
    <carousel />

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

    <FormKit type="form" submit-label="Commander" v-model="montre" @submit="upsertMontre" :config="{
        classes: {
            input: 'mb-4 p-1 bg-black',
            label: 'text-grey-600',
    
    
        },
    }" :submit-attrs="{
    classes: {
        input: 'hidden p-2 px-12 rounded text-black okine_bold uppercase border-2 border-black hover:bg-black hover:text-white'
    }
}">

<div class="flex justify-evenly mt-20">
    <div class="p-8 w-650">
    <h1 class="font-cano mb-8 uppercase text-3xl bold text-black">PERSONNALISEZ VOTRE MONTRE CONNECTé pour en obtenir une unique</h1>
    <h1 class="okine_bold_outline text-2xl">Exemple de personnalisation</h1>
        <FormKit name="bracelet_sup" label="bracelet supérieur" value="#FFFFFF" type="radio" :options="colors" legend-class="okine_bold uppercase text-lg" 
            :sections-schema="{
                inner: { $el: null },
                decorator: { $el: null },
            }" input-class="peer sr-only" options-class="flex gap-1">
            <template #label="context">
                <div class="h-6 w-10 mt-2 rounded-lg border-2 peer-checked:border-black mb-6 hover:border-black"
                    :style="{ backgroundColor: context.option.value }" />
                <span class="sr-only">{{ context.option.label }}</span>
            </template>
        </FormKit>
        <h1 class="ml-10 okine_bold uppercase text-2xl">Prix : 300€ ou 50€/MOIS</h1>
    </div>
            <div class="carousel w-64">
                <MontreSvg class="carousel-item w-64 mb-10" v-bind="montre" id="Montre" />
            </div>
        </div>

    </FormKit>

<div class="flex flex-col justify-center text-center">
    <p class="font-cano mb-8 uppercase text-xl bold text-black">Rendez-vous sur la page de personnalisation complète</p>

    <button class="p-2 px-12 mx-auto mb-16 rounded text-black okine_bold uppercase border-2 border-black hover:bg-black hover:text-white">
        <router-link to="/perso">C’est parti</router-link> 
    </button>
</div>

</template>

<style>
.okine_bold {
    font-family: 'made_okine_sans_personal_uBlk';
}

.okine_bold_outline {
    font-family: 'made_okine_sans_persBdoutline';
}

.bandeau {
    font-size: 42px;
}

.okine_regular {
    font-family: '';
}
</style>