import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

var selectItValue;
var selectItemValue;

class LearnDropdownButton extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _LearnDropdownButton();
  }
}
class _LearnDropdownButton extends State<LearnDropdownButton>{

  List<DropdownMenuItem> getListData(){
    List<DropdownMenuItem> items=new List();
    DropdownMenuItem dropdownMenuItem1=new DropdownMenuItem(
      child:new Text('1'),
      value: '1',
    );
    items.add(dropdownMenuItem1);
    DropdownMenuItem dropdownMenuItem2=new DropdownMenuItem(
      child:new Text('2'),
      value: '2',
    );
    items.add(dropdownMenuItem2);
    DropdownMenuItem dropdownMenuItem3=new DropdownMenuItem(
      child:new Text('3'),
      value: '3',
    );
    items.add(dropdownMenuItem3);
    DropdownMenuItem dropdownMenuItem4=new DropdownMenuItem(
      child:new Text('4'),
      value: '4',
    );
    items.add(dropdownMenuItem4);
    DropdownMenuItem dropdownMenuItem5=new DropdownMenuItem(
      child:new Text('5'),
      value: '5',
    );
    items.add(dropdownMenuItem5);
    DropdownMenuItem dropdownMenuItem6=new DropdownMenuItem(
      child:new Text('6'),
      value: '6',
    );
    items.add(dropdownMenuItem6);
    DropdownMenuItem dropdownMenuItem7=new DropdownMenuItem(
      child:new Text('7'),
      value: '7',
    );
    items.add(dropdownMenuItem7);
    DropdownMenuItem dropdownMenuItem8=new DropdownMenuItem(
      child:new Text('8'),
      value: '8',
    );
    items.add(dropdownMenuItem8);
    DropdownMenuItem dropdownMenuItem9=new DropdownMenuItem(
      child:new Text('9'),
      value: '9',
    );
    items.add(dropdownMenuItem9);
    DropdownMenuItem dropdownMenuItem10=new DropdownMenuItem(
      child:new Text('10'),
      value: '10',
    );
    items.add(dropdownMenuItem10);
    return items;
  }

  var value;

/*  _LearnDropdownButton(){
    value=getListData()[0].value;
  }*/

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(),
      body: new Column(
        children: <Widget>[
          new Center(
            child: new DropdownButton(
              items: getListData(),
              hint:new Text('下拉选择你想要的数据'),//当没有默认值的时候可以设置的提示
              value: value,//下拉菜单选择完之后显示给用户的值
              onChanged: (T){//下拉菜单item点击之后的回调
                setState(() {
                  value=T;
                });
              },
              elevation: 24,//设置阴影的高度
              style: new TextStyle(//设置文本框里面文字的样式
                color: Colors.red
              ),
//              isDense: false,//减少按钮的高度。默认情况下，此按钮的高度与其菜单项的高度相同。如果isDense为true，则按钮的高度减少约一半。 这个当按钮嵌入添加的容器中时，非常有用
              iconSize: 50.0,//设置三角标icon的大小
            ),
          ),
        ],
      ),
    );
  }
} 

/*
class HomeScreen extends StatelessWidget {

  // 生成数据源
  List<DropdownMenuItem> generateItemList() {
    final List<DropdownMenuItem> items =List();
    final DropdownMenuItem item1 = DropdownMenuItem(value: 1,child: Text('RU2009'));
    final DropdownMenuItem item2 = DropdownMenuItem(value: 2,child: Text('NI2008'));
    final DropdownMenuItem item3 = DropdownMenuItem(value: 'SC2008',child: Text('SC2008'));
    final DropdownMenuItem item4 = DropdownMenuItem(value: 'p2009',child: Text('p2009'));
    items.add(item1);
    items.add(item2);
    items.add(item3);
    items.add(item4);
    return items;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.redAccent,
      // 修改标题为'第一页！'
      appBar: AppBar(title: Text('第一页！')),
     //body: Center(child: Text('Home1'),)
    //  修改页面UI
      body: DropdownButton(
     //   value: _value, style: style,
        hint: Text('下拉菜单选择要交易的商品？？？'),
        value: selectItValue,
        items: generateItemList(),
        onChanged: (value){},
      )

    );
  }
}*/
