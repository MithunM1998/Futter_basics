



import 'dart:ffi';


import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class SecondScreen extends StatelessWidget{
 /* late String text;
  SecondScreen(String text){
    this.text=text;
  }*/
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(title: Text('SecondScreen'),),
     /* body: Container(
        alignment: Alignment.center,
        child: Column(
          children: [
            Text("Message from first screen $text"),
          ],
        ),

      )*/
        body: createListView(),
    );
  }
/*Widget createListView(){
    var listview=ListView(
      children: [
        ListTile(
          leading: Icon(Icons.phone),
          title: Text("My phone"),
          subtitle: Text("My number"),
          trailing: Icon(Icons.money),
          onTap: (){
            Fluttertoast.showToast(msg: "You clicked me ra");
  },
        ),
        ListTile(
          leading: Icon(Icons.phone),
          title: Text("My phone"),
          subtitle: Text("My number"),
          trailing: Icon(Icons.money),

        )
      ],
    );
    return listview;
}*/


List<String> generatelist(){
  List<String> list=List.generate(50, (index) => "item $index");

 /* List<String> list=[];
  list.add("Hello");
  list.add("C");
  list.add("java");*/
  return list;
}

Widget createListView(){
  var listItem=generatelist();
  var listView=ListView.builder(itemBuilder: (context,index){
  return ListTile(
    leading: Text('$index'),
    title: Text(listItem[index]),
    trailing: Icon(Icons.check_box),

    onTap: (){
      Navigator.push(context, MaterialPageRoute(builder: (context)=>onClickNaviagte(listItem[index])));
    },
  );
  });
  return listView;
}
}

class onClickNaviagte extends StatelessWidget{
  late String text;

  onClickNaviagte(String t){
    this.text=t;
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
    appBar: AppBar(title: Text('onclickNavigation'),),
     body:  Center(child: Text("The data is $text",)),
    );
  }

}