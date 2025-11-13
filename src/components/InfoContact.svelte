<script>
  let name = '';
  let email = '';
  let message = '';
  let emailError = false;
  let formSubmitted = false;

  // A simple email validation function
  const validateEmail = (email) => {
    const re = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
    return re.test(String(email).toLowerCase());
  };

  // This runs when the form is submitted
  const handleSubmit = () => {
    if (validateEmail(email)) {
      // --- SUCCESS ---
      formSubmitted = true;
      emailError = false;
      // In a real app, you'd send data to a server here
    } else {
      // --- ERROR ---
      emailError = true;
    }
  };

  // This clears the error message as the user types
  const clearError = () => {
    if (emailError) {
      emailError = false;
    }
  };
</script>

<section id="contact" class="py-12 md:py-24 bg-stone-50">
  <div class="container mx-auto max-w-7xl px-4 sm:px-6 lg:px-8">

    <h2 class="text-center text-3xl font-bold tracking-tight text-stone-900 sm:text-4xl">
      Pricing & Location
    </h2>

    <div class="mt-12 grid grid-cols-1 gap-8 md:grid-cols-3">
      <div class="rounded-lg bg-white p-6 shadow-lg">
        <h3 class="text-xl font-semibold text-stone-900">Pricing</h3>
        <p class="mt-2 text-base text-stone-600">$50 / Month</p>
        <p class="mt-1 text-base text-stone-600">No Contracts</p>
      </div>

      <div class="rounded-lg bg-white p-6 shadow-lg">
        <h3 class="text-xl font-semibold text-stone-900">Hours</h3>
        <p class="mt-2 text-base text-stone-600">Mon-Fri: 5am - 10pm</p>
        <p class="mt-1 text-base text-stone-600">Sat-Sun: 7am - 8pm</p>
      </div>

      <div class="rounded-lg bg-white p-6 shadow-lg">
        <h3 class="text-xl font-semibold text-stone-900">Location</h3>
        <p class="mt-2 text-base text-stone-600">123 Main St, Anytown</p>
        <a
          href="#contact"
          class="mt-4 inline-block rounded-md border border-stone-900 px-3.5 py-2.5 text-sm font-semibold text-stone-900 shadow-sm hover:bg-stone-100 focus-visible:outline focus-visible:outline-2 focus-visible:outline-offset-2 focus-visible:outline-stone-900"
        >
          View Map
        </a>
      </div>
    </div>

    <div class="mx-auto mt-16 max-w-2xl text-left">
      <h3 class="text-center text-lg font-medium text-stone-600">
        Have a Question?
      </h3>

      {#if formSubmitted}
        <div id="success-message" class="mt-8 text-center">
          <svg class="mx-auto h-20 w-20" viewBox="0 0 80 80" fill="none" xmlns="http://www.w3.org/2000/svg">
            <circle cx="40" cy="40" r="40" class="text-stone-900" fill="currentColor"/>
            <path d="M57.3334 26L33.5 50.3953L22.6667 39.2326" stroke="white" stroke-width="5" stroke-linecap="round" stroke-linejoin="round"/>
          </svg>
          <h3 class="mt-4 text-3xl font-bold text-stone-900">Thank You!</h3>
          <p class="mt-2 text-lg text-stone-600">
            We've received your message and will get back to you within 24 hours.
          </p>
        </div>
      {:else}
        <form id="contact-form" on:submit|preventDefault={handleSubmit} class="mt-8 space-y-6">

          <div>
            <label for="name" class="block text-sm font-medium leading-6 text-stone-900">
              Your Name
            </label>
            <input
              type="text"
              id="name"
              name="name"
              bind:value={name}
              required
              class="mt-2 block w-full rounded-md border-0 py-2 px-3.5 text-stone-900 shadow-sm ring-1 ring-inset ring-stone-300 placeholder:text-stone-400 focus:ring-2 focus:ring-inset focus:ring-stone-600 sm:text-sm sm:leading-6"
            />
          </div>

          <div>
            <label for="email" class="block text-sm font-medium leading-6 text-stone-900">
              Your Email
            </label>
            <input
              type="email"
              id="email"
              name="email"
              bind:value={email}
              on:input={clearError}
              required
              class="mt-2 block w-full rounded-md border-0 py-2 px-3.5 text-stone-900 shadow-sm ring-1 ring-inset placeholder:text-stone-400 focus:ring-2 focus:ring-inset focus:ring-stone-600 sm:text-sm sm:leading-6"
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
              id="message"
              name="message"
              rows="5"
              bind:value={message}
              required
              class="mt-2 block w-full rounded-md border-0 py-2 px-3.5 text-stone-900 shadow-sm ring-1 ring-inset ring-stone-300 placeholder:text-stone-400 focus:ring-2 focus:ring-inset focus:ring-stone-600 sm:text-sm sm:leading-6"
            ></textarea>
          </div>

          <div>
            <button
              type="submit"
              class="flex w-full justify-center rounded-md bg-stone-900 px-3.5 py-2.5 text-sm font-semibold text-white shadow-sm hover:bg-stone-700 focus-visible:outline focus-visible:outline-2 focus-visible:outline-offset-2 focus-visible:outline-stone-900"
            >
              Send Message
            </button>
          </div>
        </form>
      {/if}
    </div>

  </div>
</section>
