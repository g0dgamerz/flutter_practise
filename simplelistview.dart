import 'package:flutter/material.dart';

void main() {runApp(
    MaterialApp(
      title: "Listview tutorial",
      home: Scaffold(
        appBar: AppBar(title: Text("Basic of list view"),
        ),
        body: getListView(),

      ),
    ));
}
Widget getListView(){
  var listView = ListView(
    children: <Widget>[
      ListTile(
        leading: Icon(Icons.landscape),
        title: Text("landscape"),
        subtitle: Text("Beautiful view"),
        trailing: Icon(Icons.wb_sunny),
        onTap: () {

          debugPrint("landscape tapped");
        },
      ),
      Text("another list :)"),
      ListTile(
        leading: Icon(Icons.laptop_chromebook),
        title: Text("windows"),
      ),
      ListTile(
        leading: Icon(Icons.phone),
        title: Text("phone"),
      ),
      Text("yet another element in the list"),
      Container(color: Colors.purple,height: 30.0,)
    ],
  );
  return listView;
}
