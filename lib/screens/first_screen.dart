

import 'package:flutter/material.dart';
import 'package:hello/screens/SecondScreen.dart';

class FirstScreen extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(title: Text('firstScreen'),),
      body: Container(
        alignment: Alignment.center,
        child: ElevatedButton( onPressed: (){
        Navigator.push(context, MaterialPageRoute(builder:(context)=>SecondScreen()));

        },
        child: Text("go to second screen"),)
      ),
    );
  }

}