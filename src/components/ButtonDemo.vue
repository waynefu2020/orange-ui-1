<template>
  <div>Button示例</div>
  <Demo :component="Button1Demo"/>
  <Demo :component="Button2Demo"/>
  <Demo :component="Button3Demo"/>
  <Demo :component="Button4Demo"/>
  <Demo :component="Button5Demo"/>
  <hr>
<!--  <h1>示例1</h1>-->
<!--  <div>-->
<!--    <Button theme="button">你好</Button>-->
<!--    <Button theme="link">你好</Button>-->
<!--    <Button theme="text">你好</Button>-->
<!--  </div>-->


</template>

<script lang="ts">
import Button from '../lib/Button.vue'
import Demo from './Demo.vue';
import Button1Demo from './Button1Demo.vue';
import Button2Demo from './Button2Demo.vue';
import Button3Demo from './Button3Demo.vue';
import Button4Demo from './Button4Demo.vue';
import Button5Demo from './Button5Demo.vue';

export default {
  components:{Button,Demo},
  setup(){
    return {Button1Demo,Button2Demo,Button3Demo,Button4Demo,Button5Demo}
  }
}
</script>