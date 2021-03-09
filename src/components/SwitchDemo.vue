<template>
    <div>
      <Switch v-model:value="bool"/>
      <!--不使用v-model的版本：<Switch :value="y" @update:value="y = $event"/>-->
    </div>
</template>

<script lang="ts">
import Switch from '../lib/Switch.vue'
import {ref} from 'vue';
export default {
  components:{Switch},
  setup(){
    const bool = ref(false)
    return {bool}
  }
}
</script>

<style lang="scss" scoped>

</style>