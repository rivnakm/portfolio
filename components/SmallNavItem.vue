<script setup lang="ts">
defineProps<{
  to: string
}>()
</script>

<template>
  <li>
    <NuxtLink class="text-sm pl-4 text-neutral-300 hover:text-green-500" :to="to"><slot /></NuxtLink>
  </li>
</template>
