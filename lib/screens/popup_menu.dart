import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hello/main.dart';
import 'package:hello/screens/WebView.dart';

import 'Emptyscreen.dart';

class popupMenu extends StatelessWidget {
  const popupMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("PopupMenu"),
      actions: [
       IconButton(onPressed: (){

       }, icon: Icon(Icons.favorite)),
        IconButton(onPressed: (){

        }, icon:Icon(Icons.share)),

        PopupMenuButton(
          onSelected: (item){//this is used to navigate to other screen by using the popup menu options
            if(item=="Home"){
              Navigator.push(context, MaterialPageRoute(builder:(context)=>mywebview()));
            }
          },
            itemBuilder: (BuildContext context)=> <PopupMenuEntry<String>>[
          PopupMenuItem(child: Text("Home"),value: "Home",),
          PopupMenuItem(child: Text("Sign in"),value: "Sign in",),
          PopupMenuItem(child: Text("Sign out"),value: "Sign out",)
        ])
      ],),
      body: Center(
        child: ElevatedButton(onPressed: (){
         // Navigator.pushNamed(context, EmptyScreen.route);//this is for without passing data/arguments
          Navigator.pushNamed(context, EmptyScreen.route,arguments: passDataForNamedRoutes("Mithun","i am developer"));
        },child: Text("go next"),),
      ),
    );
  }
}
class passDataForNamedRoutes{
  late String title;
  late String description;
  passDataForNamedRoutes(String title,String description){
    this.title=title;
    this.description=description;
  }
}