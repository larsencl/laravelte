<script>
    import { inertia } from "@inertiajs/svelte";
    import { page } from "@inertiajs/svelte";
    
    console.log($page.props);
</script>

<main>
    <nav>
        <div>
            <a use:inertia href="/">Home</a>
            <a use:inertia href="/about">About</a>
        </div>
    </nav>
    <article>
        <slot />
    </article>
</main>
