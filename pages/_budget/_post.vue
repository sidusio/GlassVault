<template>
  <div>
    <h1>{{ post.name }}</h1>
    <ul>
      <li v-for="subpost, slug in post.posts" :key="slug">
        <NuxtLink :to="'/' + budgetPath + '/' + postPath + '-' + slug">
          {{ subpost.name }}
        </NuxtLink>
      </li>
    </ul>
  </div>
</template>

<script >
export default {
  asyncData ({ params, $budgets }) {
    const budgetPath = params.budget
    const budget = $budgets()[params.budget]
    // TODO check if undefined

    const postPath = params.post
    const posts = params.post.split('-')
    let base = budget
    for (let i = 0; i < posts.length; i++) {
      posts[i] = base.posts[posts[i]]
      // TODO check if undefined
      base = posts[i]
    }

    // TODO check length
    const post = posts[posts.length - 1]

    return { budget, post, posts, postPath, budgetPath }
  }
}
</script>
