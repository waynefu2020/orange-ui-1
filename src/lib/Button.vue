<template>
    <button class="orange-button"
    :class="{[`orange-theme-${theme}`]: theme}"
    >
      <slot/>
    </button>
</template>

<script lang="ts">
  export default {
    props:{
      theme: {
        type: String,
        default: 'button'
      },
    },
  }
</script>

<style lang="scss">
  $h: 32px;
  $blue: #40a9ff;
  .orange-button{
    box-sizing: border-box;
    height: $h;
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
    & + &{
      margin-left: 8px;
    }
    &:hover, &:focus{
      color: $blue;
    }
    &:focus{
      outline: none;
    }
    &::-moz-focus-inner{
      border: 0;
    }
    &.orange-theme-link{
      border-color: transparent;
      box-shadow: none;
      color: $blue;
      &:hover,&:focus{
        color: lighten($blue,10%);
      }
    }
    &.orange-theme-text{
      color: inherit;
      border-color: transparent;
      box-shadow: none;
      &:hover,&:focus{
        background: darken(white, 5%);
      }
    }
  }
</style>

