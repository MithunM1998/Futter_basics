import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:convert';

import 'package:shared_preferences/shared_preferences.dart';

class SharedPreferencees extends StatefulWidget {
  const SharedPreferencees({Key? key}) : super(key: key);

  @override
  State<SharedPreferencees> createState() => _SharedPreferenceesState();


}

class _SharedPreferenceesState extends State<SharedPreferencees> {
TextEditingController editingController=new TextEditingController();
TextEditingController editingController1=new TextEditingController();
TextEditingController editingController2=new TextEditingController();
  @override
  Widget build(BuildContext context) {
    getData();
    return Scaffold(
      appBar: AppBar(title: Text("sharedpreference"),),
      body: Column(

        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          TextField(

            controller: editingController,
            decoration: InputDecoration(hintText: "Enter your name"),
          ),
          TextField(
            controller: editingController1,
            decoration: InputDecoration(hintText: "Enter your phone"),
          ),
          TextField(
            controller: editingController2,
            decoration: InputDecoration(hintText: "Enter your age"),
          ),
          ElevatedButton(onPressed:() async{
            sharedDataPreferences(editingController.text,editingController1.text,editingController2.text);
          }, child: Text("Fetch data"))
        ],
      ),
    );
  }


  void sharedDataPreferences(String name,String phone,String age) async{
    SharedPreferences sharedPreferences =await SharedPreferences.getInstance();
  sharedPreferences.setString("username", name);
    sharedPreferences.setString("phone", phone);
    sharedPreferences.setString("age", age);

   // print(name);
    sharedPreferences.reload();
  }

   getData() async{
    SharedPreferences sharedPreferences =await SharedPreferences.getInstance();
    String username = sharedPreferences.getString("username") ?? "";
    editingController.text = username;
    String phone = sharedPreferences.getString("phone") ?? "";
    editingController1.text = phone;
    String age = sharedPreferences.getString("age") ?? "";
    editingController2.text = age;
  }
}
