<script>
    export let dark;
</script>

<div class="flex items-center gap-4">
  <a href="#contact"></a>
    <button class={"specialBtn " + (dark ? " bg-[#181b34]" : " ")}>
        <p class="text-base sm:text-lg md:text-xl">Contact Us</p>
    </button>
  </a>
    <button class="specialBtnDark">
        <p class="text-base sm:text-lg md:text-xl">Get Started &rarr;</p>
    </button>
</div>
