import { defineConfig } from 'vite';
import laravel from 'laravel-vite-plugin';
import { svelte } from "@sveltejs/vite-plugin-svelte";
import sveltePreprocess from 'svelte-preprocess';

export default defineConfig({
    plugins: [
        laravel({
            input: [
                "resources/sass/app.scss",
                "resources/js/app.js"
            ],
            refresh: true,
        }),
        svelte({
            compilerOptions: {
                customElement: true,
            },
            preprocess: sveltePreprocess(),
        })
    ],
});