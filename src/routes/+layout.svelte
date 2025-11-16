<script>
  import "../app.css";
  import CtAs from "../components/CTAs.svelte";
  import Footer from "../components/Footer.svelte";
  import Header from "../components/Header.svelte";

  import { openModal, activeSection } from "../store";

  let y;
  $: outerHeight = 0;

  function reroute(href) {
    $openModal = false;
    window.location.href = href;
    $activeSection = href.substring(1);
  }
</script>

{#if $openModal}
<div
    class="fixed top-0 left-0 w-screen h-screen border-b bg-white z-50 flex flex-col gap-8 p-5 px-8 md:hidden"
  >
    <div class="flex items-center justify-between gap-4 border-b pb-2">
      </div>
    <div class="flex flex-col gap-4 flex-1">
      <button
        on:click={() => reroute("#product")}
        class="border-none outline-none p-2 group duration-200 cursor-pointer text-left"
      >
        <p
          class="duration-200 group-hover:pl-2 poppins text-3xl font-semibold border-b-2"
          class:border-indigo-400={$activeSection === 'product'}
          class:border-transparent={$activeSection !== 'product'}
        >
          Product <i class="fa-solid fa-chevron-right text-xl pl-4" />
        </p>
      </button>
      <button
        on:click={() => reroute("#reviews")}
        class="border-none outline-none p-2 group duration-200 cursor-pointer text-left"
      >
        <p
          class="duration-200 group-hover:pl-2 poppins text-3xl font-semibold border-b-2"
          class:border-indigo-400={$activeSection === 'reviews'}
          class:border-transparent={$activeSection !== 'reviews'}
        >
          Reviews <i class="fa-solid fa-chevron-right text-xl pl-4" />
        </p>
      </button>
      <button
        on:click={() => reroute("#faqs")}
        class="border-none outline-none p-2 group duration-200 cursor-pointer text-left"
      >
        <p
          class="duration-200 group-hover:pl-2 poppins text-3xl font-semibold border-b-2"
          class:border-indigo-400={$activeSection === 'faqs'}
          class:border-transparent={$activeSection !== 'faqs'}
        >
          FAQs <i class="fa-solid fa-chevron-right text-xl pl-4" />
        </p>
      </button>
      <button
        on:click={() => reroute("#pricing")}
        class="border-none outline-none p-2 group duration-200 cursor-pointer text-left"
      >
        <p
          class="duration-200 group-hover:pl-2 poppins text-3xl font-semibold border-b-2"
          class:border-indigo-400={$activeSection === 'pricing'}
          class:border-transparent={$activeSection !== 'pricing'}
        >
          Pricing <i class="fa-solid fa-chevron-right text-xl pl-4" />
        </p>
      </button>
      <button
        on:click={() => reroute("#contact")}
        class="border-none outline-none p-2 group duration-200 cursor-pointer text-left"
      >
        <p
          class="duration-200 group-hover:pl-2 poppins text-3xl font-semibold border-b-2"
          class:border-indigo-400={$activeSection === 'contact'}
          class:border-transparent={$activeSection !== 'contact'}
        >
          Contact Us <i class="fa-solid fa-chevron-right text-xl pl-4" />
        </p>
      </button>
    </div>
{/if}

{#if y > outerHeight}
  <div
    class="bg-white fixed top-0 left-0 w-full flex flex-col z-20 px-4 fadeIn"
  >
    <Header />
  </div>
{/if}
<slot />
<Footer />
<svelte:window bind:scrollY={y} bind:outerHeight />
<!-- header
hero
product description
user reviews
faq
conversion-
footer -->
