<script setup lang="ts">
import FormMat from "../components/FormMat.vue";

defineProps<{
  id: string;
}>();
</script>
<template>

  <FormMat :id="id" />
</template>