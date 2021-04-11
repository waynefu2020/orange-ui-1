<template>
  <div>
    <div class="topnavAndBanner">
      <Topnav/>
      <div class="banner">
        <h1>Orange-UI</h1>
        <h2>基于Vue 3的极简UI组件库</h2>
        <p class="actions">
          <a href="https://github.com/waynefu2020/orange-ui-1">
            <svg class="icon" aria-hidden="true">
              <use xlink:href="#icon-github"></use>
            </svg>
            GITHUB
          </a>
          <router-link to="/doc">快速上手</router-link>
        </p>
      </div>
    </div>
  </div>
  <div class="features">
    <ul>
      <li>
        <svg>
          <use xlink:href="#icon-vue"></use>
        </svg>
        <h3>基于Vue 3</h3>
        <p>基于 Vue 3 Compositions API开发</p>
      </li>
      <li>
        <svg>
          <use xlink:href="#icon-ts"></use>
        </svg>
        <h3>基于TypeScript</h3>
        <p>源代码采用TypeScript书写</p>
      </li>
      <li>
        <svg>
          <use xlink:href="#icon-lights"></use>
        </svg>
        <h3>代码易读</h3>
        <p>每个组件的代码经过封装优化，保证简洁</p>
      </li>
    </ul>
  </div>
</template>

<script lang="ts">
import Topnav from '../components/Topnav.vue';

export default {
  components: {
    Topnav
  }
};
</script>

<style lang="scss" scoped>
$green: #28d1c9;
$border-radius: 4px;
$color: #007974;

.topnavAndBanner {
  background: linear-gradient(145deg, rgba(254,227,199,1) 0%, rgba(237,148,99,1) 100%);
  clip-path: ellipse(80% 60% at 50% 40%);
}

.features {
  margin: 64px auto;
  padding: 0 16px;

  @media (min-width: 800px) {
    width: 800px;
    > ul{
      >li{
        width: 50%;
      }
    }
  }
  @media (min-width: 1200px) {
    width: 1200px;
    > ul{
      >li{
        width: 33.333333%;
      }
    }
  }
  >ul {
    display: flex;
    flex-wrap: wrap;
    >li {
      margin: 16px 0;
      display: grid;
      justify-content: start;
      align-content: space-between;
      grid-template-areas:
        "icon title"
        "icon text";
      grid-template-columns: 80px auto;
      grid-template-rows: 1fr auto;
      >svg {
        grid-area: icon;
        width: 64px;
        height: 64px;
      }
      >h3 {
        grid-area: title;
        font-size: 28px;
      }
      >p {
        grid-area: text
      }
    }
  }
}

.banner {
  color: #1C1C1C;
  padding: 100px 0;
  display: flex;
  justify-content: center;
  align-items: center;
  flex-direction: column;
  >h1{
    font-size: 48px;
  }
  >h2{
    font-size: 21px;
  }
  > .actions {
    padding: 8px 0;

    > a {
      margin: 0 8px;
      color: #1C1C1C;
      background: #FFFFFF;
      display: inline-block;
      padding: 4px 8px;
      border-radius: $border-radius;
      box-shadow: 1px 1px 1px #dadada;

      &:hover {
        text-decoration: none;
      }
    }
  }
}
</style>