import 'package:flutter/material.dart';

class Home extends StatelessWidget{

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title: 'Material app',
      home: Scaffold(
          appBar: AppBar(
            title: Text('Material App Bar'),
          ),
          body: Center(
            child: Container(
              child: Text('Hello World'),
            ),
          )
      ),
    );
  }
}