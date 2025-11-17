<script>
  import { onMount } from "svelte";
  import { activeSection } from "../store";

  export let id = "";
  export let bg = "bg-white";

  let el;

  onMount(() => {
    const observer = new IntersectionObserver(
      (entries) => {
        if (entries[0].isIntersecting) {
          $activeSection = id;
        }
      },
      {
        threshold: 0.1,
      },
    );

    observer.observe(el);

    return () => {
      observer.disconnect();
    };
  });
</script>

<section {id} bind:this={el} class="py-12 md:py-24 {bg}">
  <div class="container mx-auto max-w-7xl px-4 sm:px-6 lg:px-8">
    <slot />
  </div>
</section>
