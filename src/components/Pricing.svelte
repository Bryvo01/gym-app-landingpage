<script>
  import SectionWrapper from './SectionWrapper.svelte';
</script>

<SectionWrapper id="pricing">
  <div class="mb-12 text-center">
    <h2 class="text-3xl font-bold tracking-tight text-stone-900 sm:text-4xl">
      Pricing
    </h2>
    <p class="mt-4 text-2xl font-bold text-stone-700">
      No Contracts!
    </p>
    <p class="mt-2 text-lg text-stone-600">
      Simple, flexible plans to fit your life.
    </p>
  </div>

  <div class="mx-auto grid max-w-lg gap-8 lg:max-w-none lg:grid-cols-3">
    <div class="rounded-lg bg-white p-8 shadow-lg">
      <h3 class="text-xl font-semibold text-stone-900">Day Pass</h3>
      <p class="mt-4 text-4xl font-bold text-stone-900">$15</p>
      <p class="mt-3 text-base text-stone-600">Perfect for a single visit.</p>
    </div>

    <div class="rounded-lg bg-white p-8 shadow-lg ring-2 ring-stone-900">
      <h3 class="text-xl font-semibold text-stone-900">Monthly</h3>
      <p class="mt-4 text-4xl font-bold text-stone-900">$50</p>
      <p class="mt-3 text-base text-stone-600">Our most popular plan.</p>
    </div>

    <div class="rounded-lg bg-white p-8 shadow-lg">
      <h3 class="text-xl font-semibold text-stone-900">Annual</h3>
      <p class="mt-4 text-4xl font-bold text-stone-900">$500</p>
      <p class="mt-3 text-base text-stone-600">Best value, 12 months for 10.</p>
    </div>
  </div>
</SectionWrapper>
