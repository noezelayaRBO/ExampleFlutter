import 'package:flutter/material.dart';

import 'package:newapptest/providers/provider_menu.dart';

class Home extends StatelessWidget{

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title: 'Material app',
      home: Scaffold(
          appBar: AppBar(
            title: Text('Flutter'),
          ),
          body: _list()
      ),
    );
  }
  Widget _list(){
    print(menuProvider);
    return ListView(
      children: _listItems(),
    );
  }

  List<Widget> _listItems() {
    return [
      ListTile(
        title: Text('Test List'),
      ),
      Divider(),
      ListTile(
        title: Text('Test List'),
      ),
      Divider(),
      ListTile(
        title: Text('Test List'),
      ),
      Divider(),
      ListTile(
        title: Text('Test List'),
      ),
      Divider(),
    ];
  }
}