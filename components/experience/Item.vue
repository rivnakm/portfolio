<script setup lang="ts">
defineProps<{
  title: string
  location: string
  dates: string
}>()
</script>

<template>
  <li>
    <div class="m-1 my-4 pl-2 border-l border-green-500">
      <h1><span class="font-bold">{{ title }}</span> - {{ location }}</h1>
      <span class="text-sm">{{ dates }}</span>
      <slot></slot>
    </div>
  </li>
</template>
