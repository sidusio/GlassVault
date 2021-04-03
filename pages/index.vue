<template>
  <div class="container">
    <div>
      <h1 class="title">
        glass-vault
      </h1>
      <ul class="links">
        <li
          v-for="budget in budgets"
          :key="budget.slug"
        >
          <NuxtLink :to="'./' + budget.slug">
            {{ budget.name }}
          </NuxtLink>
        </li>
      </ul>
    </div>
  </div>
</template>

<script>
export default {
  data: () => ({
    budgets: [
      {
        slug: 'qwerty',
        name: 'first'
      },
      {
        slug: 'xyz',
        name: 'sexond'
      }
    ]
  })
}
</script>

<style>
</style>
