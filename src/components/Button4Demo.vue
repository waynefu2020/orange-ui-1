<demo>支持禁用按钮</demo>
<template>
  <div>
    <Button>禁用按钮</Button>
    <Button theme="link">禁用链接按钮</Button>
    <Button theme="text">禁用文本</Button>
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