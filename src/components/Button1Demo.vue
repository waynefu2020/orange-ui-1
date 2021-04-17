<demo>常规使用</demo>
<template>
  <div>
    <button class="example-button-primary">PRIMARY</button>
    <button class="example-button-success">SUCCESS</button>
    <button class="example-button-warning">WARNING</button>
    <button class="example-button-error">ERROR</button>
    <!--    <Button theme="button">你好</Button>-->
<!--    <Button theme="link">你好</Button>-->
<!--    <Button theme="text">你好</Button>-->
  </div>
</template>

<script lang="ts">
import Button from '../lib/Button.vue';
export default {
  components:{
    Button
  }
}
</script>