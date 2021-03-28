<template>
  <button class="orange-button" :class="classes">
<!--    <span v-if="loading" class="orange-loadingIndicator"></span>-->
    <slot />
  </button>
</template>

<script lang="ts">
import {computed} from 'vue';

export default {
  props: {
    theme: {
      type: String,
      default: 'button'
    },
    size: {
      type: String,
      default: 'normal'
    },
    level: {
      type: String,
      default: 'normal'
    },
    disabled: {
      type: Boolean,
      default: 'false'
    },
    loading: {
      type: Boolean,
      default: 'false'
    }
  },
  setup(props) {
    const {theme, size, level} = props;
    const classes = computed(() => {
      return {
        [`orange-theme-${theme}`]: theme,
        [`orange-size-${size}`]: size,
        [`orange-level-${level}`]: level,
      };
    });
    return {classes};
  }
};
</script>

<style lang="scss">
$h: 32px;
$blue: #4082F6;
$red: #ED5B56;
$grey: #F5F5F5;
.orange-button {
  box-sizing: border-box;
  height: $h;
  margin: 6px 6px;
  padding: 0 12px;
  cursor: pointer;
  display: inline-flex;
  justify-content: center;
  align-items: center;
  white-space: nowrap;
  background: white;
  color: #333;

  border: 1px solid #d9d9d9;
  border-radius: 4px;
  box-shadow: 0 1px 0 fade-out(black, 0.95);
  transition: background 250ms;

  & + & {
    margin-left: 8px;
  }

  &:hover, &:focus {
    color: $blue;
  }

  &:focus {
    outline: none;
  }

  &::-moz-focus-inner {
    border: 0;
  }

  &.orange-theme-link {
    border-color: transparent;
    box-shadow: none;
    color: $blue;

    &:hover, &:focus {
      color: lighten($blue, 10%);
    }
  }

  &.orange-theme-text {
    color: inherit;
    border-color: transparent;
    box-shadow: none;

    &:hover, &:focus {
      background: darken(white, 5%);
    }
  }

  &.orange-size-big {
    font-size: 24px;
    height: 48px;
    padding: 0 16px;
    background: #4082F6;
    color: white;
  }

  &.orange-size-small {
    font-size: 12px;
    height: 20px;
    padding: 0 4px;
    background: #4082F6;
    color: white;
  }

  &.orange-theme-button {
    &.orange-level-main {
      background: $blue;
      color: white;
      border-color: $blue;

      &:hover,
      &:focus {
        background: darken($blue, 10%);
        border-color: darken($blue, 10%);
      }
    }

    &.orange-level-danger {
      background: $red;
      color: white;
      border-color: $red;

      &:hover,
      &:focus {
        background: darken($red, 10%);
        border-color: darken($red, 10%);
      }
    }
  }

  &.orange-theme-text {
    &.orange-level-main {
      color: $blue;

      &:hover,
      &:focus {
        color: darken($blue, 10%);
      }
    }

    &.orange-level-danger {
      color: $red;

      &:hover,
      &:focus {
        color: darken($red, 10%);
      }
    }
  }

  &.orange-theme-link {
    &.orange-level-danger {
      color: $red;

      &:hover,
      &:focus {
        color: darken($red, 10%);
      }
    }
  }

  &.orange-theme-button {
    //&[disabled] {
    //  cursor: not-allowed;
    //  color: $grey;
    //  &:hover {
    //    border-color: $grey;
    //  }
    //}
    //&.orange-theme-link, &.orange-theme-text {
    //  &[disabled] {
    //    cursor: not-allowed;
    //    color: $grey;
    //  }
    //}
    > .orange-loadingIndicator {
      width: 10px;
      height: 10px;
      display: inline-block;
      margin-right: 4px;
      border-radius: 8px;
      border-color: $blue $blue $blue transparent;
      border-style: solid;
      border-width: 2px;
      animation: orange-spin 1s infinite linear;
    }
  }

  @keyframes orange-spin {
    0% {
      transform: rotate(0deg)
    }
    100% {
      transform: rotate(360deg)
    }
  }

}
</style>

