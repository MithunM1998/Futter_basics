import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';



class scafflod extends StatelessWidget{

   TextEditingController editingController=TextEditingController();
   final  _snackKey= GlobalKey<ScaffoldMessengerState>();
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      key: _snackKey,
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('First Screen'),
        centerTitle: true,
        backgroundColor: Colors.green,
      ),
     /* body: Center(
          child: ElevatedButton(
            onPressed: () {
              print("Button Clicked");
            },
            onLongPress: (){
              print("Button Long Pressed");
            },
           style: ElevatedButton.styleFrom(primary: Colors.black,onPrimary: Colors.white),
            child: Text("Click Me!!",style: TextStyle(fontWeight: FontWeight.bold),),
          ))*/
     //   body:Center(

           /*child: Row(
             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children:  <Widget>[
                Icon(Icons.icecream,size: 50.0,),
              Icon(Icons.access_alarm,size: 45.0,),
              Icon(Icons.access_time,size: 50.0)
              ]
            )*/
       /* child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(onPressed: (){}, child:Text("Login")),
            ElevatedButton(onPressed: (){}, child:Text("Logout"))
          ],
        )*/

       // ,

     //   ),

      /*body: Container(
        margin: EdgeInsets.all(15),
        child: Column(
          children: [
            TextField(
              controller: editingController,
              keyboardType: TextInputType.emailAddress,
              decoration:InputDecoration (
                border: OutlineInputBorder(),
  hintText: "Enter email",
                suffixIcon: Icon(Icons.email),
              ),
            ),
            ElevatedButton(onPressed: (){
              print("emial adresss:"+editingController.text);
            }, child: Text("Click me"))
          ],
        ),
      ),*/

      /*body: Container(
        color: Colors.lime,
        child: Text("Heyyyyyyy",style:TextStyle(backgroundColor: Colors.blue,fontSize: 20),),
        height: 200,
        width: 200,
        alignment: Alignment.center,
        margin:EdgeInsets.all(40),
        padding: EdgeInsets.fromLTRB(15.0, 15.0, 15.0, 15.0),
      ),
      floatingActionButton: FloatingActionButton(
        tooltip: "add to something",
          child: Text("Click"), backgroundColor: Colors.red, onPressed: (){
    final snackBar = SnackBar(
    content: const Text('Yay! A SnackBar!'),
    action: SnackBarAction(
    label: 'Undo',
    onPressed: () {
    // Some code to undo the change.
    },
    ),
    );

    // Find the ScaffoldMessenger in the widget tree
    // and use it to show a SnackBar.
    ScaffoldMessenger.of(context).showSnackBar(snackBar);

      }),*/

      /*body:
      Center(
        child: ElevatedButton(onPressed: () {
          Fluttertoast.showToast(msg: "You hit me!!!!");
        }, child:Text("Hit me!"),

        ),
      ),*/
      body: Center(
        child: ElevatedButton(onPressed: (){
        createAlertDialogue(context);
        },child: Text("Presss here!"),),
      ),
 );



  }
createAlertDialogue(BuildContext context){
var alertdialogue=AlertDialog(title: Text("Alert dialogue"),content: Text("do you wish to close"),
  actions: [GestureDetector(
    child: Text("close"),onTap:(){
      Navigator.pop(context);
  },
  )],);
 showDialog(context: context, builder:(BuildContext context){
   return alertdialogue;
 } );
}
}