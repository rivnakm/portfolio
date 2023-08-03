<template>
  <SectionHeader> About me </SectionHeader>
  <div class="w-full grid grid-cols-5">
    <div class="col-span-2">
      <img src="~/assets/img/profile_main.jpg" alt="profile picture"/>
    </div>
    <div class="mx-4 col-span-3">
      <div class="mb-1 text-green-500 text-4xl">
        Michael Rivnak<span class="blinking">_</span>
      </div>
      <div class="mb-4 text-sm">Backend Developer, Full-Stack Developer, Sysadmin</div>

      <div>
        <ul>
          <AboutItem title="Email" description="rivnakm1@gmail.com" />
          <AboutItem title="Phone" description="+1 (203) 543-3806" />
          <AboutItem title="Location" description="Fairfield, CT" />
        </ul>
      </div>

      <div class="mt-4">
        <a class="text-2xl text-green-500 m-2" href="https://www.linkedin.com/in/michael-rivnak/" aria-label="My LinkedIn"><i class="fa-brands fa-linkedin-in"></i></a>
        <a class="text-2xl text-green-500 m-2" href="https://github.com/mrivnak" aria-label="My GitHub"><i class="fa-brands fa-github"></i></a>
      </div>
    </div>
  </div>
</template>

<style scoped>
.blinking {
  animation: blinker 1s steps(1) infinite;
}

@keyframes blinker {
  0% {
    opacity: 0;
  }
  50% {
    opacity: 1;
  }
}
</style>
