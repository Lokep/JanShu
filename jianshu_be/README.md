## Description

通过Nest框架重写简书API，该项目遵循restful风格，接口区分前台/后台

## Installation

```bash
$ npm install
```

## Running the app

```bash
# development
$ npm run start

# 热更新
$ npm run start:dev

# production mode
$ npm run start:prod
```

## Test

```bash
# unit tests
$ npm run test

# e2e tests
$ npm run test:e2e

# test coverage
$ npm run test:cov
```



## 文件结构



## API接口

>  目前通过swagger输出，区分 前台/后台

1. 前台模块划分（/FE/）

- article-list ( for index )

- search ( on the navbar)

- 搜索结果页

- log-in/sign-in

- create-article 

- 分类

  * 优选连载
  * 简书版权
  * 简书大学堂

- 文章详情页

- 作者相关

- 用户主页

  * 基本信息（粉丝数/关注）
  * 点赞
  * 文章列表
  * 动态列表
  * 最新评论
  * 热门

- 推荐阅读

- 作者推荐

- 会员

- 移动端介绍

- 关于简书

  .
  .
  .
  .
  .
  .
  .
  .

2. 后台管理模块（/BE/）

   

## 环境介绍

为尝试docker下安装配置nginx，搭建本地服务器，并通过Nginx转发

## 当前参考链接

[https://docs.nestjs.cn/6/introduction](https://docs.nestjs.cn/6/introduction)

[ https://keelii.com/ ]( https://keelii.com/ )

[ https://github.com/jiayisheji/blog/issues/18 ]( https://github.com/jiayisheji/blog/issues/18 )

[ https://www.jianshu.com/p/fb5d9293ffd2 ]( https://www.jianshu.com/p/fb5d9293ffd2 )

[https://www.jianshu.com/p/82cdd91cc6f1](https://www.jianshu.com/p/82cdd91cc6f1)

[https://mp.weixin.qq.com/s/8HvkX2u2fWVIkKp1c9EAoQ](https://mp.weixin.qq.com/s/8HvkX2u2fWVIkKp1c9EAoQ)