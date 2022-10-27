<script setup lang="ts">
import type { Montre } from "@/types"
import { colors } from "@/types"
import { materiaux } from "@/types"
import { ref } from "vue";
import { useRouter } from "vue-router";
import { supabase } from "@/supabase";
import MontreSvg from "../components/MontreSvg.vue";
import type { names } from "@formkit/core";
import type { label } from "@formkit/inputs";

let user = supabase.auth.user()
const router = useRouter();

const props = defineProps<{
    data?: Montre;
    id?: string;
}>();

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
    <div class="p-2">
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
        <div class="flex justify-evenly mt-20">
            <div>
                <FormKit type="form" submit-label="Commander" v-model="montre" @submit="upsertMontre" :config="{
                    classes: {
                        input: 'mb-4 p-1 bg-black',
                        label: 'text-grey-600',
                        
                        
                    },
                    }" :submit-attrs="{ classes: { input: 'p-2 px-12 rounded text-black okine_bold uppercase border-2 border-black hover:bg-black hover:text-white mb-16 mt-6'
                    }}">
                    
                    
                    <FormKit class="test" name="ecran" label="ECRAN" value="#FFFFFF" type="radio" :options="colors" legend-class="text-black okine_medium uppercase"
                        :sections-schema="{
                            inner: { $el: null },
                            decorator: { $el: null },
                        }" input-class="peer sr-only" options-class="flex gap-1" >

                        <template #label="context">
                            <div class="h-6 w-10 mt-2 rounded-lg border-2 peer-checked:border-black mb-6 hover:border-black"
                                :style="{ backgroundColor: context.option.value }" />
                            <span class="sr-only">{{ context.option.label }}</span>
                        </template>
                    </FormKit>
                    <FormKit name="bracelet_sup" label="bracelet supérieur" value="#FFFFFF" type="radio" :options="colors" legend-class="text-black okine_medium uppercase"
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
                    <FormKit name="bracelet_inf" label="bracelet inférieur" value="#FFFFFF" type="radio" :options="colors" legend-class="text-black okine_medium uppercase"
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
                    <FormKit name="boitier_sup" label="boitier supérieur" value="#FFFFFF" type="radio" :options="colors" legend-class="text-black okine_medium uppercase"
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
                    <FormKit name="boitier_inf" label="boitier inférieur" value="#FFFFFF" type="radio" :options="colors" legend-class="text-black okine_medium uppercase"
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
                    <FormKit name="id_materiaux" label="Matériaux de la montre" value="#000000" legend-class="text-black okine_medium uppercase"
                        type="radio" :options="materiaux" :sections-schema="{
                            inner: { $el: null },
                            decorator: { $el: null },
                        }" input-class="peer sr-only" options-class="flex gap-1">
                        <template #label="context">
                            <div class="h-6 w-10 mt-2 rounded-lg border-2 peer-checked:border-black mb-6 hover:border-black"
                                :style="{ backgroundImage: `url('${context.option.img}')` }" />
                            <span class="sr-only">{{ context.options.label }}</span>

                        </template>
                    </FormKit>
                </FormKit>

            </div>
            <div class="carousel w-64">
                <MontreSvg class="carousel-item w-64 mb-10" v-bind="montre" id="Montre" />
            </div>
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

.test {
    color: red;
}
</style>