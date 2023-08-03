<template>
  <div class="h-screen w-screen flex justify-center">
    <div class="w-full lg:w-8/12">
      <NavBar>
        <NavItem to="/" name="Home" />
        <NavItem to="/projects" name="Projects" />
      </NavBar>
      <slot />
    </div>
  </div>
</template>
