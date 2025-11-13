<script>
  import SectionWrapper from './SectionWrapper.svelte';

  let name = '';
  let email = '';
  let message = '';
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

<SectionWrapper id="contact" bg="bg-stone-50">
  <div class="grid grid-cols-1 gap-16 md:grid-cols-2">

    <div class="contact-info">
      <h2 class="text-3xl font-bold tracking-tight text-stone-900 sm:text-4xl">
        Get In Touch
      </h2>

      <div class="mt-8 space-y-8">
        <div>
          <h3 class="text-xl font-semibold text-stone-900">Find Us</h3>
          <p class="mt-2 text-base text-stone-600">123 Main St, Anytown, USA</p>
          <a
            href="#contact"
            class="mt-4 inline-block rounded-md border border-stone-900 px-3.5 py-2.5 text-sm font-semibold text-stone-900 shadow-sm hover:bg-stone-100 focus-visible:outline focus-visible:outline-2 focus-visible:outline-offset-2 focus-visible:outline-stone-900"
          >
            View Map
          </a>
        </div>
        <div>
          <h3 class="text-xl font-semibold text-stone-900">Contact Us</h3>
          <p class="mt-2 text-base text-stone-600">hello@swoleymoley.com</G>
          <p class="mt-1 text-base text-stone-600">(555) 123-4567</p>
        </div>
      </div>
    </div>

    <div class="contact-form">
      {#if formSubmitted}
        <div id="success-message" class="flex h-full flex-col items-center justify-center text-center">
          <svg class="h-20 w-20" viewBox="0 0 80 80" fill="none" xmlns="http://www.w3.org/2000/svg">
            <circle cx="40" cy="40" r="40" class="text-stone-900" fill="currentColor"/>
            <path d="M57.3334 26L3.5 50.3953L22.6667 39.2326" stroke="white" stroke-width="5" stroke-linecap="round" stroke-linejoin="round"/>
          </svg>
          <h3 class="mt-4 text-3xl font-bold text-stone-900">Thank You!</h3>
          <p class="mt-2 text-lg text-stone-600">
            We've received your message and will get back to you within 24 hours.
          </p>
        </div>
      {:else}
        <form id="contact-form" on:submit|preventDefault={handleSubmit} class="space-y-6">
          <div>
            <label for="name" class="block text-sm font-medium leading-6 text-stone-900">
              Your Name
            </label>
            <input
              type="text" id="name" name="name" bind:value={name} required
              class="mt-2 block w-full rounded-md border-0 py-2 px-3.5 text-stone-900 shadow-sm ring-1 ring-inset ring-stone-300 focus:ring-2 focus:ring-inset focus:ring-stone-600"
            />
          </div>

          <div>
            <label for="email" class="block text-sm font-medium leading-6 text-stone-900">
              Your Email
            </label>
            <input
              type="email" id="email" name="email" bind:value={email} on:input={clearError} required
              class="mt-2 block w-full rounded-md border-0 py-2 px-3.5 text-stone-900 shadow-sm ring-1 ring-inset focus:ring-2 focus:ring-inset focus:ring-stone-600"
              class:ring-stone-300={!emailError}
              class:ring-red-500={emailError}
            />
            <p class="mt-2 text-sm text-red-600" class:hidden={!emailError}>
              Please enter a valid email (e.g., name@example.com)
            </p>
          </div>

          <div>
            <label for="message" class="block text-sm font-medium leading-6 text-stone-900">
              Your Message
            </label>
            <textarea
              id="message" name="message" rows="5" bind:value={message} required
              class="mt-2 block w-full rounded-md border-0 py-2 px-3.5 text-stone-900 shadow-sm ring-1 ring-inset ring-stone-300 focus:ring-2 focus:ring-inset focus:ring-stone-600"
            ></textarea>
          </div>

          <div>
            <button
              type="submit"
              class="flex w-full justify-center rounded-md bg-stone-900 px-3.5 py-2.5 text-sm font-semibold text-white shadow-sm hover:bg-stone-700 focus-visible:outline"
            >
              Send Message
            </button>
          </div>
        </form>
      {/if}
    </div>
  </div>
</SectionWrapper>
