<script>
  import { openModal, activeSection } from "../store";

  function handleClick(section) {
    $activeSection = section;
  }
</script>

<header class="flex flex-col relative z-20">
  <div
    class="max-w-[1400px] mx-auto w-full flex items-center justify-between p-4 py-6"
  >
    <a href="/">
      <h1 class="font-semibold">
        Swoley <span class="text-indigo-600">Moley</span>
      </h1>
    </a>
    <button
      on:click={() => ($openModal = true)}
      class="md:hidden grid place-items-center"
    >
      <i class="fa-solid fa-bars" />
    </button>
    <nav class="hidden md:flex items-center gap-4 lg:gap-6">
      <a
        href="#product"
        class="duration-200 hover:text-indigo-600 cursor-pointer border-b-2 pb-1"
        class:border-indigo-600={$activeSection === "product"}
        class:border-transparent={$activeSection !== "product"}
        on:click={() => handleClick("product")}
      >
        Product
      </a>
      <a
        href="#reviews"
        class="duration-200 hover:text-indigo-600 cursor-pointer border-b-2 pb-1"
        class:border-indigo-600={$activeSection === "reviews"}
        class:border-transparent={$activeSection !== "reviews"}
        on:click={() => handleClick("reviews")}
      >
        Reviews
      </a>
      <a
        href="#faqs"
        class="duration-200 hover:text-indigo-600 cursor-pointer border-b-2 pb-1"
        class:border-indigo-600={$activeSection === "faqs"}
        class:border-transparent={$activeSection !== "faqs"}
        on:click={() => handleClick("faqs")}
      >
        FAQs
      </a>
      <a
        href="#pricing"
        class="duration-200 hover:text-indigo-600 cursor-pointer border-b-2 pb-1"
        class:border-indigo-600={$activeSection === "pricing"}
        class:border-transparent={$activeSection !== "pricing"}
        on:click={() => handleClick("pricing")}
      >
        Pricing
      </a>
      <a
        href="#contact"
        class="duration-200 hover:text-indigo-600 cursor-pointer border-b-2 pb-1"
        class:border-indigo-600={$activeSection === "contact"}
        class:border-transparent={$activeSection !== "contact"}
        on:click={() => handleClick("contact")}
      >
        Contact Us
      </a>

      <button class="specialBtn">
        <p>Start free today</p>
      </button>
    </nav>
  </div>
</header>
