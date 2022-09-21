import 'dart:convert';

import 'package:flutter/services.dart' show rootBundle;

class _ProviderMenu {
  List<dynamic> getOption = [];
  _ProviderMenu(){
    loadData();
  }

  void loadData(){
    rootBundle.loadString('Data/json_menu.json').then((value){
      Map datos = json.decode(value);
      print(datos['nomApp']);
    });
  }
}

final menuProvider = new _ProviderMenu();
