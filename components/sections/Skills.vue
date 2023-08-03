<script setup lang="ts">
const languages = ["C# (.NET)", "Rust", "C++", "Python", "Java", "TypeScript"];
const tools = ["Docker", "AWS", "Terraform", "Linux", "GitHub Actions", "REST"];
const frameworks = ["ASP.NET", "Vue", "Nuxt", "Django"];
</script>

<template>
  <SectionHeader> Skills </SectionHeader>

  <h2 class="text-xl">Languages</h2>
  <div class="grid grid-cols-3">
    <p class="text-sm m-1 pl-2 border-l border-green-500" v-for="lang in languages">{{ lang }}</p>
  </div>

  <h2 class="mt-2 text-xl">Tools</h2>
  <div class="grid grid-cols-3">
    <p class="text-sm m-1 pl-2 border-l border-green-500" v-for="tool in tools">{{ tool }}</p>
  </div>

  <h2 class="mt-2 text-xl">Frameworks</h2>
  <div class="grid grid-cols-3">
    <p class="text-sm m-1 pl-2 border-l border-green-500" v-for="framework in frameworks">{{ framework }}</p>
  </div>
</template>