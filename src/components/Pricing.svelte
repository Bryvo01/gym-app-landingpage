<script>
  import SectionWrapper from './SectionWrapper.svelte';
  export let dark;
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

        <div class="rounded-lg bg-[#181b34] p-6 text-white shadow-lg">
          <div class="flex items-center justify-between">
            <h3 class="text-xl font-semibold">Basic</h3>
            <span class="text-3xl font-bold">$50<span class="text-lg font-medium text-indigo-400">/mo</span></span>
          </div>
          <p class="mt-1 text-base text-stone-300">($500/year)</p>
          <ul class="mt-4 list-inside list-disc space-y-1 text-stone-300">
            <li>Unlimited Workouts</li>
            <li>Access to all equipment</li>
          </ul>
        </div>

        <div class="rounded-lg bg-[#181b34] p-6 text-white shadow-lg">
          <div class="flex items-center justify-between">
            <h3 class="text-xl font-semibold">Swoley Training</h3>
            <span class="text-3xl font-bold">$75<span class="text-lg font-medium text-indigo-400">/mo</span></span>
          </div>
          <p class="mt-1 text-base text-stone-300">($750/year)</p>
          <ul class="mt-4 list-inside list-disc space-y-1 text-stone-300">
            <li>Everything in the Basic Plan</li>
            <li>Personalized Training</li>
          </ul>
        </div>

        <div class="rounded-lg bg-white p-6 shadow-lg">
          <div class="flex items-center justify-between">
            <h3 class="text-xl font-semibold">Swoley Nutrition</h3>
            <span class="text-3xl font-bold">$100<span class="text-lg font-medium text-indigo-400">/mo</span></span>
          </div>
          <p class="mt-1 text-base text-stone-300">($1000/year)</p>
          <ul class="mt-4 list-inside list-disc space-y-1 text-stone-300">
            <li>Everything in the Training Plan</li>
            <li>Customized Meal Plans</li>
            <li>Nutritional Consultations</li>
            <li>Weight Tracking</li>
            <li>Meal Prep</li>
          </ul>
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
          <div class="mt-6">
            <button class="specialBtnDark">
              <p class="text-base sm:text-lg md:text-xl">View Map &rarr;</p>
            </button>
          </div>
        </div>

        <div>
          <h3 class="text-2xl font-semibold text-stone-900">Contact Us</h3>
          <p class="mt-4 text-lg text-stone-600">hello@swoleymoley.com</p>
          <p class="text-lg text-stone-600">(555) 123-4567</p>
          <div class="mt-6">
            <a href="#contact">
              <button class={"specialBtn " + (dark ? " bg-[#181b34]" : " ")}>
                <p class="text-base sm:text-lg md:text-xl">Contact Us</p>
              </button>
            </a>
          </div>
        </div>

      </div>
    </div>
  </div>
</SectionWrapper>
