<template>
  <div>导航栏 |
    <router-link to="/">Wayne</router-link> |
  <router-link to="/xxx">Wayne2</router-link>
  </div>
  <hr/>
  <router-view />
</template>

<script>
export default {
  name: 'App',
}
</script>
