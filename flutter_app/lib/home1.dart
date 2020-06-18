import 'package:flutter/material.dart';
import 'package:flutterapp/pages/text_screen.dart';
import 'package:flutterapp/pages/home_screen.dart';

class Home1bottom extends StatefulWidget {
  @override
  _Home1bottomState createState() => _Home1bottomState();
}

class _Home1bottomState extends State<Home1bottom> {
  final _BottomNavigationColor = Colors.blue;
  int _currentIndex = 0;
  List<Widget> list = List();
  @override
  void initState(){
    list 
      ..add(HomeScreen())
      ..add(TextScreen());
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: (){},
        tooltip: '按十次开始运行',
        child: Icon(
        //Icons.change_history,
          Icons.wb_sunny,
          color: Colors.red,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      body: list[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        items:[
          BottomNavigationBarItem(
            icon:Icon(
              Icons.home,
              color: _BottomNavigationColor,
            ),
            title: Text(
              'Home',
              style: TextStyle(color: _BottomNavigationColor)
            )
          ),
          BottomNavigationBarItem(
            icon:Icon(
              Icons.hotel,
              color: _BottomNavigationColor,
            ),
            title: Text(
              '测试页面',
              style: TextStyle(color: _BottomNavigationColor)
            )
          ),
        ],
        currentIndex: _currentIndex,
        onTap: (int index){
          setState(() {
            _currentIndex = index;
          });
        }
      ),
    );
  }
}