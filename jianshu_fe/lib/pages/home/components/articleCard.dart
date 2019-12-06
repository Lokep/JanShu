import 'package:flutter/material.dart';

class ArticleCard extends StatelessWidget {
  final id;
  ArticleCard({this.id});
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 10.0),
      padding:EdgeInsets.fromLTRB(10.0, 5.0, 10.0, 5.0),
      color: Colors.white,
      child: InkWell(
        onTap: () {
          Navigator.pushNamed(context, '/article',arguments: {
            "id":this.id
          });
        },
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(top: 10),
              child: 
                Text(
                '其实我不是单身，只是在等人。'+this.id.toString(),
                style: TextStyle(
                  fontSize: 20.0
                ),
                maxLines: 2,
                overflow:TextOverflow.ellipsis
              ),
            ),
            SizedBox(
              child: Row(
                children: <Widget>[
                  Container(
                    width: 360.0,
                    height: 100.0,
                    margin: EdgeInsets.fromLTRB(0, 10, 20, 0),
                    child: Text(
                      '阿里时序时空数据库TSDB最新推出TSQL，支持标准SQL的语法和函数。用户使用熟悉的SQL，不仅仅查询更简单易用，用户还可以利用SQL强大的功能，实现更加复杂的计算分析。',
                      style: TextStyle(
                      fontSize: 16.0,
                      height: 1.8,
                      color: Colors.black54
                    ),
                    maxLines: 3,
                    overflow:TextOverflow.ellipsis
                    ),
                  ),
                  Image.network(
                    'https://upload.jianshu.io/users/upload_avatars/2509688/835abb69-1f97-4d23-93c8-07ab122d124e.jpg?imageMogr2/auto-orient/strip|imageView2/1/w/96/h/96/format/webp',
                    width: 80.0,
                    height: 80.0,
                  )
                ]
              )
            ),
            Container(
              margin: EdgeInsets.only(top: 0.0),
              child: Row(
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.fromLTRB(0, 0, 20.0, 0),
                    child: Icon(
                      Icons.brightness_7,
                      size: 12.0,
                      color: Colors.red[200],
                    )
                  ),
                  Container(
                    margin:EdgeInsets.only(right: 10.0),
                    child:Text(
                      'author:   Lokep',
                      style: TextStyle(
                        fontSize: 12.0,
                        color: Colors.black45,
                      ),
                    )
                  ),
                  Container(
                    margin:EdgeInsets.only(right: 10.0),
                    child:Text(
                      '295 阅读',
                      style: TextStyle(
                        fontSize: 12.0,
                        color: Colors.black45,
                      ),
                    )
                  ),
                  Container(
                    margin:EdgeInsets.only(right: 10.0),
                    child:Text(
                      '745 赞',
                      style: TextStyle(
                        fontSize: 12.0,
                        color: Colors.black45,
                      ),
                    )
                  ),
                  Container(
                    margin:EdgeInsets.only(right: 10.0),
                    child:Text(
                      '',
                      style: TextStyle(
                        fontSize: 12.0,
                        color: Colors.black45,
                      ),
                    )
                  ),
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: <Widget>[
                        Icon(
                          Icons.close,
                          size: 12.0,
                          color: Colors.black45,
                        )
                      ],
                    )
                  )
                ]
              ),
            )
          ],
        ),
      )
    );
  }
}