import 'package:flutter/material.dart';
import 'dart:ui';
import 'package:flutter_html/flutter_html.dart';

class Article extends StatelessWidget {
  final arguments;
  Article({this.arguments});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      // appBar: PreferredSize(
      //   preferredSize:Size.fromHeight(MediaQueryData.fromWindow(window).padding.top),
      //   child:SafeArea(
      //     top: true,
      //     child: Offstage(),
      //   )
      // ),
      // Text(
          // 'this is the article page'+
        // )
      body: SafeArea(
        child:SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.all(10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  'Flutter更改状态栏颜色' + arguments['id'].toString(),
                  textDirection: TextDirection.ltr,
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 10.0),
                  child: Row(
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.only(right: 5.0),
                        width: 40.0,
                        height: 40.0,
                        decoration: BoxDecoration(
                          borderRadius:BorderRadius.circular(40.0),
                          image: DecorationImage(image: NetworkImage('https://upload.jianshu.io/users/upload_avatars/15246151/dfd089a6-5129-4998-bfa1-f9763f392bba.jpg?imageMogr2/auto-orient/strip|imageView2/1/w/96/h/96/format/webp'))
                        )
                      ),
                      Text(
                        '顾余瑾'
                      ),
                      Expanded(
                        child: Row(
                          mainAxisAlignment:MainAxisAlignment.end,
                          children: <Widget>[
                            Container(
                              width: 50.0,
                              height: 25.0,
                              decoration: BoxDecoration(
                                borderRadius:BorderRadius.circular(4.0),
                                color: Colors.green
                              ),
                              child: Text(
                                '+ 关注',
                                style: TextStyle(
                                  color: Colors.white,
                                  height: 1.5,
                                ),
                                textAlign: TextAlign.center,
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(0, 5, 0, 10),
                  child: Row(
                    children: <Widget>[
                      Text('字数：300  ',style: TextStyle(fontSize: 12.0)),
                      Text('   ·阅读：786',style: TextStyle(fontSize: 12.0)),
                      Expanded(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: <Widget>[
                            Text('2019.09.26 08:01:37',style: TextStyle(fontSize: 12.0))
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  child:Html(
                    data: """
                      <article class="_2rhmJa"><div class="image-package">
                      <div class="image-container" style="max-width: 700px; max-height: 685px; background-color: transparent;">
                      <div class="image-container-fill" style="padding-bottom: 97.85000000000001%;"></div>
                      <div class="image-view" data-width="1024" data-height="1002"><img data-original-src="//upload-images.jianshu.io/upload_images/15246151-22120c2633502e99.jpeg" data-original-width="1024" data-original-height="1002" data-original-format="image/jpeg" data-original-filesize="235257" data-image-index="0" style="cursor: zoom-in;" class="" src="https://upload-images.jianshu.io/upload_images/15246151-22120c2633502e99.jpeg?imageMogr2/auto-orient/strip|imageView2/2/w/1024/format/webp"></div>
                      </div>
                      <div class="image-caption">图片发自简书App</div>
                      </div><p>1.Lookbook</p><p>它的优点在于穿搭的风格非常丰富，休闲风，复古风，时髦风，先锋风等等。基本上想找的穿搭风格都有，应有尽有。</p><p>2.WEAR</p><p>一款日本穿搭分享的社交app，很多8本模特设计师都经常使用，wear里分享着各种穿搭风格的技巧，定期推出不同主题的穿搭风格，同时也有很多po主分享生活欧美妆，搭配</p><p>3.杂志迷</p><p>海量免费日系时装杂志，提升审美神器，里面杂质的系那超多，各种穿搭非常养眼，每期杂志的分类都很详细，喜欢日系穿搭的小仙女绝对不能错过，相信我，用了一段时间，你的衣服搭配感会大大提升</p><p>4.Nothing</p><p>国内首个分享时尚博主社区，里面可以浏览到很多穿衣很好看的博主，学习他们的穿搭技巧，同时还会经常发布国内设计师的品牌活动，加强互动。整个app界面管里，可以看到很多博主分享穿搭技巧，情侣装，职业装，搭配首饰等等，关于女生穿搭的话题。</p><p>5.女神派</p><p>国内首个时装共享衣橱，很多明星都在使用，解决很多女性穿衣的困难，衣橱里总是少一件衣服的大难题。随时随地试出自己想要的穿衣风格。</p><p></p><div class="image-package">
                      <div class="image-container" style="max-width: 700px; max-height: 1245px; background-color: transparent;">
                      <div class="image-container-fill" style="padding-bottom: 177.78%;"></div>
                      <div class="image-view" data-width="1080" data-height="1920"><img data-original-src="https://upload-images.jianshu.io/upload_images/15246151-152507986c942120.jpg?imageMogr2/auto-orient/strip|imageView2/2/w/1080/format/webp" data-original-width="1080" data-original-height="1920" data-original-format="image/jpeg" data-original-filesize="324550" data-image-index="1" style="cursor: zoom-in;" class="" src="https://upload-images.jianshu.io/upload_images/15246151-152507986c942120.jpg?imageMogr2/auto-orient/strip|imageView2/2/w/1080/format/webp"></div>
                      </div>
                      <div class="image-caption">图片发自简书App</div>
                      </div></article>
                    """,
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      alignment: Alignment.center,
                      margin: EdgeInsets.only(bottom: 5),
                      child: Text(
                        '小礼物走一走，来简书关注我',
                        textAlign:TextAlign.center,
                        style:TextStyle(
                          height:1.5,
                        )
                      ),
                    ),
                    Container(
                      width: 70.0,
                      height: 30.0,
                      margin: EdgeInsets.only(bottom: 40),
                      decoration: BoxDecoration(
                        borderRadius:BorderRadius.circular(4.0),
                        color: Colors.red[200]
                      ),
                      child: Text(
                        '赞赏支持',
                        style: TextStyle(
                          color: Colors.white,
                          height: 1.8,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        )
        
      ),
    );
  }
}