<template>
  <div class="container">
    <div>
      <h1 class="title">
        glass-vault
      </h1>
      <ul class="links">
        <li
          v-for="(budget, slug) in budgets"
          :key="slug"
        >
          <NuxtLink :to="slug" append>
            {{ budget.name }}
          </NuxtLink>
        </li>
      </ul>
    </div>
  </div>
</template>

<script>
export default {
  asyncData ({ $budgets }) {
    return { budgets: $budgets() }
  }
}
</script>

<style>
</style>
