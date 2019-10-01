import 'package:flutter/material.dart';
import 'package:listview/simplelistview.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(title: Text("long list"),),
      body: getListView(),
      floatingActionButton: FloatingActionButton(
        onPressed: () => debugPrint("fab clicked"),
        child: Icon(Icons.add),
        tooltip: 'add on more item',
      ),
    ),
  ));
}
void showSnackBar(BuildContext context, String item){
  var snackBar = SnackBar(
      content: Text("You just tapped $item"),
      action: SnackBarAction(
        label: "ündo",
        onPressed: () {
          debugPrint('performing dummy undo operations');
        },
      )
  );
  Scaffold.of(context).showSnackBar(snackBar);
}
List<String> getListElements(){
  var items = List<String>.generate(500,(counter)=>'item $counter');
  return items;
}
Widget getListView(){
  var listItems = getListElements();
  var listView = ListView.builder(itemBuilder: (context,index){
    return ListTile(
      leading: Icon(Icons.arrow_right),
      title: Text(listItems[index]),
      onTap: (){
        showSnackBar(context,listItems[index]);
      },
    );
  });
  return listView;
}