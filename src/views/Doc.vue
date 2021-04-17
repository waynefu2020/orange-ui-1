<template>
  <div class="layout">
    <Topnav toggleMenuButtonVisible class="nav" />
    <div class="content">
      <div class="aside-overlay" v-if="menuVisible" @click="menuVisible = false"></div>
      <aside v-if="menuVisible">
        <div class="title">
          <router-link to="/">Orange-UI</router-link>
          <p>V0.1</p>
        </div>
        <h2>开发指南</h2>
        <ol>
          <li>
            <router-link to="/doc/intro">介绍</router-link>
          </li>
          <li>
            <router-link to="/doc/install">安装</router-link>
          </li>
          <li>
            <router-link to="/doc/get-started">开始使用</router-link>
          </li>
        </ol>
        <h2>组件</h2>
        <ol>
          <li>
            <router-link to="/doc/switch">Switch</router-link>
          </li>
          <li>
            <router-link to="/doc/button">Button</router-link>
          </li>
          <li>
            <router-link to="/doc/dialog">Dialog</router-link>
          </li>
          <li>
            <router-link to="/doc/tabs">Tabs</router-link>
          </li>
        </ol>
      </aside>
      <main>
        <router-view/>
      </main>
    </div>
  </div>
</template>

<script lang="ts">
import Topnav from '../components/Topnav.vue';
import {inject, ref, Ref} from 'vue';

export default {
  components: {
    Topnav
  },
  setup() {
    const menuVisible = inject<Ref<boolean>>('menuVisible');
    return {menuVisible};
  }
};
</script>

<style lang="scss" scoped>
$aside-index: 10;
.layout {
  display: flex;
  flex-direction: column;
  height: 100vh;

  > .nav {
    flex-shrink: 0;
  }

  > .content {
    flex-grow: 1;
    padding-top: 60px;
    padding-left: 156px;
    @media (max-width: 500px) {
      padding-left: 0;
    }
  }
}

.content {
  display: flex;

  > aside {
    flex-shrink: 0;
  }

  > main {
    flex-grow: 1;
    padding: 0 16px;
    background: white;
  }
}
.title{
  font-size: 20px;
  color: #757575;
  padding: 8px 16px;
  border-bottom: 1px solid rgba(0,0,0,0.12);
  >p{
    font-size: 8px;
  }
}
.title:hover{
  color: #ED6379;
}
aside {
  background: #FEE3C7;
  width: 150px;
  position: fixed;
  left: 0;
  top: 0;
  height: 100%;
  z-index: $aside-index;
  @media (max-width: 800px){

  }
  > h2 {
    margin-bottom: 4px;
    padding: 4px 16px;
    font-size: 18px;
    font-weight: bold;
  }

  > ol {
    > li {
      font-size: 16px;
      > a {
        display: block;
        padding: 6px 16px;
        text-decoration: none;
      }

      .router-link-active {
        background: white;
      }
    }
  }
}
.aside-overlay{
  position: fixed;
  background-color: #000;
  opacity: 0.4;
  left: 0;
  right: 0;
  top: 0;
  bottom: 0;
  z-index: 10;
  transition: all 250ms;
}
main {
  overflow: auto;
}
</style>