import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'CheckBox.dart';


class MyDrawerLayout extends StatefulWidget {
  const MyDrawerLayout({Key? key}) : super(key: key);

  @override
  State<MyDrawerLayout> createState() => _MyDrawerLayoutState();
}
var list=[Center(child: Text("Home",style: TextStyle(fontSize: 50,color: Colors.red),),),
          Center(child: Text("Sign in",style: TextStyle(fontSize: 50,color: Colors.amber),),),
          Center(child: Text("Sign out",style: TextStyle(fontSize: 50,color: Colors.deepOrange),),)];

var index=0;

class _MyDrawerLayoutState extends State<MyDrawerLayout> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Drawer"),),
      body:  Center(
        child: Column(
    mainAxisAlignment: MainAxisAlignment.center,
          children: [

            list[index],
            Padding(
              padding: const EdgeInsets.all(150.0),

                child: Center(

                  child: ElevatedButton(onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder:(context)=>CheckBox()));
                  }, child: Text("Next"),),
                ),
              ),

          ],
        ),
      ),

      drawer: Drawer(
        child: Container(
          child: ListView(
            children: [DrawerHeader(child: Container(color: Colors.amber,child: Image.asset("Images/instagram-Logo.png",height: 200,width: 300,),alignment: Alignment.center,),padding: EdgeInsets.zero,
            ),

              ListTile(
              title: Text("Home"),leading: Icon(Icons.home),onTap: (){
                Navigator.pop(context);
                setState((){
                    index=0;
                    });

              },
            ),
              ListTile(
                title: Text("sign in"),leading: Icon(Icons.home_max_rounded),onTap: (){
                Navigator.pop(context);
                setState((){
                  index=1;
                });
              },
              ),
              ListTile(
                title: Text("sign out"),leading: Icon(Icons.outbond),onTap: (){
                Navigator.pop(context);
                setState((){
                  index=2;
                });
              },
              )],
          ),
        ),

      ),
    );
  }
}


