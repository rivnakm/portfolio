<script setup lang="ts">
const props = defineProps<{
  name: string
  to: string
}>()

const router = useRouter()
const isActive = ref(false)
isActive.value = router.currentRoute.value.path === props.to

watch(router.currentRoute, () => {
  isActive.value = router.currentRoute.value.path === props.to
})
</script>

<template>
  <li class="z-10 mr-4 my-2 content-center">
    <NuxtLink
      class="hover:text-green-500"
      :class="{ 'font-semibold': isActive }"
      :to="to"
      ><span class="text-lg">{{ name }}</span></NuxtLink
    >
  </li>
</template>
