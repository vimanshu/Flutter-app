import 'package:flutter/material.dart';

//import './app_screens/home.dart';





void main(){
  runApp(MaterialApp(
    title: "Exploring UI widgets",
    home: Scaffold(
      body: getListView(),
      appBar: AppBar(title: Text('Long List View'),),

    ) ,
  ));
}

// defining the data source
List<String> getListElements(){
  var items = List<String>.generate(1000, (counter)=> "items $counter");
  return items;
}

// creating a widget for the data source

Widget getListView(){

  var listItems = getListElements();
  var listView = ListView.builder(
      itemBuilder: (context, index){

        return ListTile(
          title: Text(listItems[index]),
        );
      }
  );
}

