<script setup lang="ts">
defineProps<{
  title: string
  description: string
}>()
</script>

<template>
  <li class="my-2">
    <div class="w-24 inline-block text-neutral-400">{{ title }}:</div>
    <div class="inline-block">{{ description }}</div>
  </li>
</template>
