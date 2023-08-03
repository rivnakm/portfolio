// https://nuxt.com/docs/api/configuration/nuxt-config
export default defineNuxtConfig({
    app: {
        head: {
            script: [
                {
                    src: "https://kit.fontawesome.com/cc327c520d.js",
                    crossorigin: "anonymous",
                    defer: true,
                },
            ],
        }
    },
    postcss: {
        plugins: {
            tailwindcss: {},
            autoprefixer: {},
        },
    },
    css: ["@/assets/css/main.css", "victormono"],
})
