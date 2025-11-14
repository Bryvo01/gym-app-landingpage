<script>
  import SectionWrapper from './SectionWrapper.svelte';
</script>

<SectionWrapper id="pricing" bg="bg-stone-50">
  <div class="mb-12 text-center">
    <h3
        class="text-4xl sm:text-5xl md:text-6xl max-w-[1000px] mx-auto w-full font-semibold text-center"
    >
      Pricing & Location
    </h3>
  </div>

  <div class="grid grid-cols-1 gap-12 md:grid-cols-2 md:gap-16">

    <div class="pricing-column">
      <p class="text-2xl font-bold text-stone-700">
        No Contracts!
      </p>
      <div class="mt-6 space-y-6">
        <div class="rounded-lg bg-white p-6 shadow-lg">
          <h3 class="text-xl font-semibold text-stone-900">Basic</h3>
          <p class="mt-2 text-3xl font-bold text-stone-900">$50<span class="text-lg font-medium text-stone-600">/mo</span></p>
          <p class="mt-1 text-base text-stone-600">($500/year)</p>
          <p class="mt-1 text-base text-stone-600">Unlimited Workouts</p>
          <p class="mt-1 text-base text-stone-600">Access to all equipment</p>
        </div>
        <div class="rounded-lg bg-white p-6 shadow-lg ring-2 ring-indigo-400">
          <h3 class="text-xl font-semibold text-stone-900">Swoley Training</h3>
          <p class="mt-2 text-3xl font-bold text-stone-900">$75<span class="text-lg font-medium text-stone-600">/mo</span></p>
          <p class="mt-1 text-base text-stone-600">($750/year)</p>
          <p class="mt-1 text-base text-stone-600">Everything in the Basic Plan</p>
          <p class="mt-1 text-base text-stone-600">Personalized Training</p>
        </div>
        <div class="rounded-lg bg-white p-6 shadow-lg">
          <h3 class="text-xl font-semibold text-stone-900">Swoley Nutrition</h3>
          <p class="mt-2 text-3xl font-bold text-stone-900">$100<span class="text-lg font-medium text-stone-600">/mo</span></p>
          <p class="mt-1 text-base text-stone-600">($1000/year)</p>
          <p class="mt-1 text-base text-stone-600">Everything in the Training Plan</p>
          <p class="mt-1 text-base text-stone-600">Customized Meal Plans</p>
          <p class="mt-1 text-base text-stone-600">Nutritional Consultations</p>
          <p class="mt-1 text-base text-stone-600">Weight Tracking</p>
          <p class="mt-1 text-base text-stone-600">Meal Prep</p>
          <p class="location-column">
      <div class="space-y-10">
        <div>
          <h3 class="text-2xl font-semibold text-stone-900">Find Us</h3>
          <p class="mt-4 text-lg text-stone-600">123 Main St, Anytown, USA</p>
          <a
            href="#pricing"
            class="mt-4 inline-block rounded-md border border-stone-900 px-3.5 py-2.5 text-sm font-semibold text-stone-900 shadow-sm hover:bg-stone-100 focus-visible:outline"
          >
            View Map
          </a>
        </div>
        <div>
          <h3 class="text-2xl font-semibold text-stone-900">Contact Us</h3>
          <p class="mt-4 text-lg text-stone-600">hello@swoleymoley.com</p>
          <p class="mt-2 text-lg text-stone-600">(555) 123-4567</p>
        </div>
      </div>
    </div>

  </div>
</SectionWrapper>
