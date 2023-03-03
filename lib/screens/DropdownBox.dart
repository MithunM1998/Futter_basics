import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hello/screens/sharedPreferences.dart';

class DropdownBox extends StatefulWidget {
  const DropdownBox({Key? key}) : super(key: key);

  @override
  State<DropdownBox> createState() => _DropdownBoxState();
}

class _DropdownBoxState extends State<DropdownBox> {
  var country=["India","USA","Japan"];
  var defaultitem="India";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("dropdwon menu"),),
      body: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      //crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Center(

          child: DropdownButton(
            value: defaultitem,//defalut value setting first
              items:country.map((e) {
            return DropdownMenuItem(child: Text(e),value: e,);
          }).toList() , onChanged:(e){
            setState(() {
              defaultitem=e!;
            });
          }),

        ),ElevatedButton(onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder:(context)=>SharedPreferencees()));
        }, child:Text("Next") )
      ],
      ),
    );
  }
}
