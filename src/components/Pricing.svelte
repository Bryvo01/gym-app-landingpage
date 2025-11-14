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
        <div class="py-14 md:py-20 flex flex-col gap-8 bg-[#181b34] text-white">
          <h4 class="text-xl sm:text-2xl md:text-3xl poppins">Basic<span class="text-right justify-right">$50</span><span class="text-indigo-400">/mo</span></h4>
          <p class="poppins text-base sm:text-lg md:text-xl">($500/year)</p>
          <p class="poppins text-base sm:text-lg md:text-xl">Unlimited Workouts</p>
          <p class="poppins text-base sm:text-lg md:text-xl">Access to all equipment</p>
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
        </div>
      </div>
    </div>

    <div class="location-column">
      <p class="text-2xl font-bold text-stone-700">
        24/7 access to the equipment and the pool!
      </p>
      <div class="mt-10 space-y-10">
        <div>
          <h3 class="text-2xl font-semibold text-stone-900">Find Us</h3>
          <p class="mt-4 text-lg text-stone-600">123 Main St</p>
          <p class="text-lg text-stone-600">City, ST 55555</p>
          <div class="mt-10 space-y-10">
          <button class="specialBtnDark">
              <p class="text-base sm:text-lg md:text-xl">View Map &rarr;</p>
          </button>
        </div>
        <div>
          <div class="mt-10 space-y-10">
          <h3 class="text-2xl font-semibold text-stone-900">Contact Us</h3>
          <p class="mt-4 text-lg text-stone-600">hello@swoleymoley.com</p>
          <p class="text-lg text-stone-600">(555) 123-4567</p>
        </div>
      </div>
    </div>

  </div>
</SectionWrapper>
