<template>
  <button @click="toggle" :class="{checked}">
  <!--如果x的值为true，那么button标签的class属性就为checked-->
    <span></span>
  </button>
</template>

<script lang="ts">
import {ref} from 'vue';

export default {
  setup(){
    const checked = ref(false)
    const toggle = () =>{
      checked.value = !checked.value
    }
    return {checked, toggle}
  }
};
</script>

<style lang="scss" scoped>
$h: 22px;
$h2: $h - 4px;
button {
  position: relative;
  border: none;
  border-radius: $h/2;
  height: $h;
  width: $h*2;
  background: gray;
}
span {
  position: absolute;
  left: 2px;
  top: 2px;
  background: white;
  width: $h2;
  height: $h2;
  border-radius: $h2/2;
}
button.checked{
  background: blue;
}
button.checked > span{
  left: calc(100% - #{$h2} - 2px);
}
</style>