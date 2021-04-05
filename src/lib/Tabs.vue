<template>
  <div class="orange-tabs">
    <div class="orange-tabs-nav">
      <div class="orange-tabs-nav-item"
           @click="select(t)"
           :class="{selected: t === selected}"
           v-for="(t,index) in titles" :key="index">{{ t }}
      </div>
    </div>
    <div class="orange-tabs-content">
      {{current}}
      <component class="orange-tabs-content-item" :is="current"/>
    </div>
  </div>
</template>

<script lang="ts">
import Tab from './Tab.vue';
import {computed} from 'vue';

export default {
  props: {
    selected: {
      type: String,
    }
  },
  setup(props, context) {
    const defaults = context.slots.default();
    defaults.forEach((tag) => {
      if (tag.type != Tab) {
        throw new Error('Tabs子标签必须是Tab');
      }
    });
    const current = computed(()=>{
      console.log('重新return');
      return  defaults.filter((tag) => {
        return tag.props.titles === props.selected;
      })[0]
    });
    const titles = defaults.map((tag) => {
      return tag.props.title;
    });
    const select = (title: String) => {
      context.emit('update:selected', title);
    };
    return {defaults, titles, current, select};
  }
};
</script>

<style lang="scss">
.orange-tabs {
  &-nav {
    display: flex;
    color: #333;
    border-bottom: 1px solid #d9d9d9;

    &-item {
      padding: 8px 0;
      margin: 0 16px;
      cursor: pointer;

      &:first-child {
        margin-left: 0;
      }

      &.selected {
        color: #40a9ff;
      }
    }
  }

  &-content {
    padding: 8px 0;
  }
}
</style>