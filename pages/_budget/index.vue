<template>
  <div>
    Budget-year: {{ budget.year }}
    <br>
    <NuxtLink to="incomes" append>
      Inkomster {{ budget.posts.incomes.sum }}
    </NuxtLink>
    <br>
    <NuxtLink to="expenses" append>
      Utgifter {{ budget.posts.expenses.sum }}
    </NuxtLink>
  </div>
</template>

<script>
export default {
  asyncData ({ params, $budgets }) {
    const budget = $budgets()[params.budget]
    // TODO check if undefined
    return { budget }
  }
}
</script>
