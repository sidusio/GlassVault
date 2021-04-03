<template>
  <div>
    Budget-id: {{ budget }}
  </div>
</template>

<script>
export default {
  asyncData ({ params }) {
    return { budget: params.budget }
  }
}
</script>
