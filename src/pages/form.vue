<script setup lang="ts">
import log from "../components/log.vue";

defineProps<{
    id: string;
}>();
</script>
<template>
    <log :id="id" />
</template>