<template>
  <div class="j">
    <el-menu
      :default-active="activeIndex2"
      class="el-menu-demo"
      mode="horizontal"
      @select="handleSelect"
      background-color="#545c64"
      text-color="#fff"
      active-text-color="#ffd04b"
    >
      <el-menu-item index="1">
        <router-link to="/home">首页</router-link></el-menu-item
      >
      <el-menu-item index="2">
        <router-link to="/movie">剧本分类</router-link></el-menu-item
      >
      <el-menu-item index="3"
        ><router-link to="/about">关于</router-link></el-menu-item
      >
      <div class="a2">
        <el-input v-model="input" placeholder="请输入内容"></el-input>
      </div>

      <!-- <el-menu-item index="5" class="l" style="float: right">
        <router-link to="/movie">剧本分类</router-link></el-menu-item
      > -->
    </el-menu>
    <!-- <div class="a">
      <div class="a1">
        这话剧本杀欢迎您!
        <router-link to="/home">首页</router-link>
        <router-link to="/movie">电影</router-link>
        <router-link to="/about">关于</router-link>
      </div>

      <div class="a2">
        <input type="text" class="a22" />
        <button class="a23">搜索</button>
      </div>
      <div class="a3">
        <router-link to="/home">首页</router-link>
        <router-link to="/movie">电影</router-link>
        <router-link to="/about">关于</router-link>
      </div>
    </div> -->
    <router-view></router-view>
  </div>
</template>

<script>
export default {
  name: "App",
  data() {
    return {
      activeIndex: "1",
      activeIndex2: "1",
      input: "",
    };
  },
  methods: {
    handleSelect(key, keyPath) {
      console.log(key, keyPath);
    },
  },
  // created() {
  //   window.onhashchange = () => {
  //     console.log(location.hash);
  //     switch (location.hash) {
  //       case "#/home":
  //         this.comName = "Home";
  //         break;
  //       case "#/movie":
  //         this.comName = "Movie";
  //         break;
  //       case "#/about":
  //         this.comName = "About";
  //         break;
  //     }
  //   };
  // },
};
</script>

<style >
/* 消除路由下划线 */
a {
  text-decoration: none;
}
.router-link-active {
  text-decoration: none;
}
.a {
  background: url(img/qq.jpg) no-repeat;
  background-size: cover;
  height: 150px;
  display: flex;
  font-size: 26px;
  color: rgb(229, 232, 236);
}
.j {
  width: 100%;
  height: 150px;
}

.a1 {
  margin: 0px 100px 0px 50px;
  flex: 5;
}
.a2 {
  width: 50%;
  height: 15px;
  margin-top: 25px;
  margin-left: 350px;

  flex: 5;
  display: flex;
  align-items: center;
  justify-content: center;
}
/* .a2 input {
  margin-top: 10px;
  height: 30px;
  width: 50%;
}
.a2 button {
  margin-top: 10px;
  height: 35px;
} */
.a3 {
  flex: 2;
}
</style>