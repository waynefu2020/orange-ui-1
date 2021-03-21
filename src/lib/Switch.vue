<template>
  <button class="orange-switch" @click="toggle" :class="{'orange-checked': value}">
  <!--如果x的值为true，那么button标签的class属性就为checked-->
    <span></span>
  </button>
</template>

<script lang="ts">
import {ref} from 'vue';

export default {
  props:{
    value: Boolean
  },
  setup(props, context){
    const toggle = () =>{
      context.emit('update:value', !props.value)
    }
    return {toggle}
  }
};
</script>

<style lang="scss" scoped>
$h: 22px;
$h2: $h - 4px;
.orange-switch {
  position: relative;
  border: none;
  border-radius: $h/2;
  height: $h;
  width: $h*2;
  background: #BFBFBF;
  > span {
    position: absolute;
    left: 2px;
    top: 2px;
    background: white;
    width: $h2;
    height: $h2;
    border-radius: $h2/2;
    transition: all 250ms;
  }
  &.orange-checked{
    background: #3C91F7;
    > span{
      left: calc(100% - #{$h2} - 2px);
    }
  }
  &:focus{outline: none;}
  &:active{
    > span{ width: $h2+4px;}
  }
  &.orange-checked:active{
    > span{ width: $h2+4px; margin-left: -4px;}
  }
}


</style>