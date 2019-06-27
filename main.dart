import 'package:flutter/material.dart';

import './app_screens/home.dart';





void main(){
  runApp(MaterialApp(
    title: "Exploring UI widgets",
    home: Scaffold(
      body: getListView(),
      appBar: AppBar(title: Text('Basic List View'),),
    ) ,
  ));
}



// generating a basic list  view
Widget getListView() {

  var listView = ListView(
    children: <Widget>[
      ListTile(
        leading: Icon(Icons.landscape),
        title: Text('UI landscape view'),
        subtitle: Text("this is subtitle") ,
        trailing: Icon(Icons.wb_sunny),
        onTap: (){
          debugPrint('you clicked landscape');
        },
      ),
      ListTile(
        leading: Icon(Icons.laptop_mac),
        title: Text('macbook pro'),
        subtitle: Text("this is subtitle") ,
        trailing: Icon(Icons.lens),
        onTap: (){
          debugPrint('you clicked mac laptop');
        },
      ),
    ],
  );
  return listView;
}


//Always put scrollable widget into scaffold
