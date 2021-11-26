<template>
  <div class="homes">
    <!-- 轮播图 -->
    <el-carousel :interval="4000" type="card" height="400px">
      <span class="ssss">本周热门剧本杀</span>
      <el-carousel-item v-for="item in 6" :key="item">
        <h3 class="medium">
          <router-link to="/movie">
            <!-- 图片添加文字 -->
            <el-popover
              placement="top-start"
              title="生活本"
              width="200"
              trigger="hover"
              content="我本将心向明月，奈何明月照沟渠。"
            >
              <el-button slot="reference"
                ><img src="~@/img/caiqian.jpg" alt=""
              /></el-button>
            </el-popover>
          </router-link>
        </h3>
      </el-carousel-item>
    </el-carousel>

    <div class="bbb">
      <el-row>
        <dic class="pp">恐怖本集合</dic>
        <el-card :body-style="{ padding: '0px' }" class="ff">
          <ul>
            <router-link to="/movie"
              ><img
                src="~@/img/erchongshen.jpg"
                alt=""
                width="400"
                height="400"
            /></router-link>
            <div style="padding: 14px">
              <span>好玩的剧本啊</span>
            </div>
          </ul>
          <ul>
            <router-link to="/movie"
              ><img src="~@/img/caiqian.jpg" alt="" width="200" height="200"
            /></router-link>
            <div style="padding: 14px">
              <span>好玩的剧本啊</span>
            </div>
          </ul>

          <ul>
            <router-link to="/movie"
              ><img src="~@/img/qi.jpg" alt="" width="400" height="400"
            /></router-link>
            <div style="padding: 14px">
              <span>好玩的剧本啊</span>
            </div>
          </ul>
        </el-card>
      </el-row>
      <!-- <div class="biaoti">dasdada</div>
      <div class="neirong">
        <ul>
          <router-link to="/movie"
            ><img src="~@/img/erchongshen.jpg" alt=""
          /></router-link>
          <span><router-link to="/movie">电影</router-link></span>
        </ul>
        <ul>
          <img src="~@/img/erchongshen.jpg" alt="" />
          <span>dasdasdasdasdasdasds</span>
        </ul>
        <ul>
          <img src="~@/img/erchongshen.jpg" alt="" />
          <span>dasdasdasdasdasdasds</span>
        </ul>
      </div> -->
    </div>
    <!-- <div class="nva w">
      <div class="r1">
        <div class="r11">全部剧本分类</div>
        <div class="r12">
          <ul>
            <mt-button type="danger" icon="back">default</mt-button>
            <li><a href="#">家用电器</a></li>
            <li><a href="#">家用电器</a></li>
            <li><a href="#">家用电器</a></li>
            <li><a href="#">家器</a></li>
            <li><a href="#">家用电器</a></li>
            <li><a href="#">家用电器</a></li>
          </ul>
        </div>
      </div>
      <div class="r2">
        <ul>
          <li><a href="#">家用电器</a></li>
          <li><a href="#">家用电器</a></li>
          <li><a href="#">家用电器</a></li>
          <li><a href="#">家用电器</a></li>
          <li><a href="#">家用电器</a></li>
          <li><a href="#">家用电器</a></li>
        </ul>
      </div>
    </div> -->
  </div>
</template>

<script>
export default {};
</script>

<style>
.w {
  margin: 0;
  padding: 0;
}
.el-carousel {
  margin-top: 50px;
}
.ssss {
  font-size: 26px;
  color: #999;
}
.el-carousel__item h3 {
  color: #475669;
  font-size: 14px;
  opacity: 0.75;
  line-height: 200px;
  margin: 0;
}

.el-carousel__item:nth-child(2n) {
  background-color: #99a9bf;
}

.el-carousel__item:nth-child(2n + 1) {
  background-color: #d3dce6;
}
.time {
  font-size: 13px;
  color: #999;
}

.bottom {
  margin-top: 13px;
  line-height: 12px;
}

.button {
  padding: 0;
  float: right;
}

.image {
  width: 100%;
  display: block;
}
.pp {
  font-size: 32px;
  color: #999;
}
.ff ul {
  width: 450px;
  float: left;
}
.homes {
  margin-top: 20px;
  height: 2000px;
  width: 100%;
}
.b {
  display: flex;
  align-items: center;
  justify-content: center;
}
.mint-swipe {
  align-items: center;
  justify-content: center;
  width: 60%;

  height: 600px;
}
.mint-swipe-item {
}
.img {
  width: 100%;
  height: 100%;
}
.bbb {
}
.neirong {
}
.neirong ul {
  float: left;
  width: 400px;
  height: 200px;
}
.neirong ul img {
  width: 400px;
  height: 400px;
}
.neirong ul span {
  padding: 0px;
  width: 500px;

  text-align: center;

  display: table-cell;
}

/* .nva {
  height: 500px;
  border-bottom: 1px solid red;
}
.r1 {
  width: 230px;
  height: 50px;
  background-color: red;
  font-size: 16px;
  text-align: center;
  line-height: 50px;
  color: white;
  float: left;
}
.r11 {
  width: 230px;
  height: 50px;
}
.r12 {
  width: 230px;
  height: 300px;
  background-color: red;
}
.r12 ul li {
  padding-left: 10px;
}

.r12 ul :hover {
  background-color: white;
  color: red;
}
.r12 ul li a {
  color: white;
}

.r12 ul li a:hover {
  color: red;
}
.r2 {
  height: 50px;
  float: left;
}
.r2 ul li {
  float: left;
}
.r2 ul li a {
  display: block;
  height: 50px;
  padding: 0 25px;

  line-height: 50px;
  font-size: 16px;
} */
</style>