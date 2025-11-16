<script>
  import SectionWrapper from "./SectionWrapper.svelte";

  // --- All your Svelte logic for the form lives here ---
  let name = "";
  let email = "";
  let message = "";
  let emailError = false;
  let formSubmitted = false;

  const validateEmail = (email) => {
    const re = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
    return re.test(String(email).toLowerCase());
  };

  const handleSubmit = () => {
    if (validateEmail(email)) {
      formSubmitted = true;
      emailError = false;
    } else {
      emailError = true;
    }
  };

  const clearError = () => {
    if (emailError) {
      emailError = false;
    }
  };
</script>

<SectionWrapper id="contact">
  <div class="mb-12 text-center">
    <h3
      class="text-4xl sm:text-5xl md:text-6xl max-w-[1000px] mx-auto w-full font-semibold text-center"
    >
      Have a Question?
    </h3>
  </div>

  {#if formSubmitted}
    <div
      id="success-message"
      role="status"
      class="flex flex-col items-center justify-center text-center"
    >
      <svg
        class="h-20 w-20"
        viewBox="0 0 80 80"
        fill="none"
        xmlns="http://www.w3.org/2000/svg"
      >
        <circle
          cx="40"
          cy="40"
          r="40"
          class="text-stone-900"
          fill="currentColor"
        />
        <path
          d="M57.3334 26L33.5 50.3953L22.6667 39.2326"
          stroke="white"
          stroke-width="5"
          stroke-linecap="round"
          stroke-linejoin="round"
        />
      </svg>
      <h3 class="mt-4 text-3xl font-bold text-stone-900">Thank You!</h3>
      <p class="mt-2 text-lg text-stone-600">
        We've received your message and will get back to you within 24 hours.
      </p>
    </div>
  {:else}
    <form
      id="contact-form"
      on:submit|preventDefault={handleSubmit}
      class="grid grid-cols-1 items-start gap-8 md:grid-cols-2"
    >
      <div class="form-fields space-y-6">
        <div>
          <label
            for="name"
            class="block text-sm font-medium leading-6 text-stone-900"
          >
            Your Name
          </label>
          <input
            type="text"
            id="name"
            name="name"
            bind:value={name}
            required
            class="mt-2 block w-full rounded-md border-0 py-2 px-3.5 text-stone-900 shadow-sm ring-1 ring-inset ring-stone-300 focus:ring-2 focus:ring-inset focus:ring-indigo-400"
          />
        </div>

        <div>
          <label
            for="email"
            class="block text-sm font-medium leading-6 text-stone-900"
          >
            Your Email
          </label>
          <input
            type="email"
            id="email"
            name="email"
            bind:value={email}
            on:input={clearError}
            required
            class="mt-2 block w-full rounded-md border-0 py-2 px-3.5 text-stone-900 shadow-sm ring-1 ring-inset focus:ring-2 focus:ring-inset focus:ring-indigo-400"
            class:ring-stone-300={!emailError}
            class:ring-red-500={emailError}
          />
          <p class="mt-2 text-sm text-red-600" class:hidden={!emailError}>
            Please enter a valid email (e.g., name@example.com)
          </p>
        </div>

        <div>
          <label
            for="message"
            class="block text-sm font-medium leading-6 text-stone-900"
          >
            Your Message
          </label>
          <textarea
            id="message"
            name="message"
            rows="5"
            bind:value={message}
            required
            class="mt-2 block w-full rounded-md border-0 py-2 px-3.5 text-stone-900 shadow-sm ring-1 ring-inset ring-stone-300 focus:ring-2 focus:ring-inset focus:ring-indigo-400"
          ></textarea>
        </div>
      </div>

      <div class="form-button h-full">
        <button
          class="specialBtnDark flex h-full w-full min-h-[60px] items-center justify-center rounded-md bg-stone-900 px-3.5 py-10 text-lg font-semibold text-white shadow-sm hover:bg-stone-700 focus-visible:outline"
          type="submit"
        >
          <p class="text-base sm:text-lg md:text-xl lg:text-2xl">
            Send Message
          </p>
        </button>
      </div>
    </form>
  {/if}
</SectionWrapper>
