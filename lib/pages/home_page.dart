import 'package:flutter/material.dart';

class HomePage extends StatelessWidget{
  final itemOptions = ['uno', 'dos', 'tres', 'cuatro', 'cinco', 'uno', 'dos', 'tres', 'cuatro', 'cinco'];
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title: 'Material app',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Material App Bar'),
        ),
        body: ListView(
          children: _setItems(),
        )
      ),
    );
  }
  List<Widget> _setItems(){
    List<Widget> list = <Widget>[];
    for(var opt in itemOptions){
      final itemListTitle = ListTile(
        leading: Icon(Icons.access_alarm),
        title: Text(opt),
        subtitle: Text('Test...'),
        trailing: Icon(Icons.keyboard_arrow_right),
      );
      list.add(itemListTitle);
    }
    return list;
  }
}