import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

var selectItValue;
var selectItemValue;

class HomeScreen extends StatelessWidget {

  // 生成数据源
  List<DropdownMenuItem> generateItemList() {
    final List<DropdownMenuItem> items =List();
    final DropdownMenuItem item1 = DropdownMenuItem(value: 'RU2009',child: Text('RU2009'));
    final DropdownMenuItem item2 = DropdownMenuItem(value: 'NI2008',child: Text('NI2008'));
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
      backgroundColor: Colors.lightBlue,
      // 修改标题为'第一页！'
      appBar: AppBar(title: Text('第一页！')),
     //body: Center(child: Text('Home1'),)
    //  修改页面UI
      body: DropdownButton(
        hint: Text('下拉菜单选择要交易的商品'),
        value: selectItValue,
        items: generateItemList(),
        onChanged: (T){},
      )

    );
  }
}
