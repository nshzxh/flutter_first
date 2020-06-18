import 'package:flutter/material.dart';
import 'home1.dart';

//2020年6月18日10点50分
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '写点想法，从这开始',
      //自定义主题样本
      theme: ThemeData.dark(),
      home: Home1bottom()
         
    );
  }
}


 