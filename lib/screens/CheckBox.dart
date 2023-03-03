import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'DropdownBox.dart';

class CheckBox extends StatefulWidget {
  const CheckBox({Key? key}) : super(key: key);

  @override
  State<CheckBox> createState() => _CheckBoxState();
}

class _CheckBoxState extends State<CheckBox> {
  bool isChecked=false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,

        children: [
          Checkbox(value: isChecked, onChanged:(val){
            setState(() {

              isChecked=val!;
            });
          }),
          CheckboxListTile(value: isChecked,title: Text("Are you sure!!!!"),controlAffinity: ListTileControlAffinity.leading, onChanged: (val){//if you remove controll affinity box will apear to the rigth
            setState(() {

              isChecked=val!;
            });
          }),




             Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                ElevatedButton(onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder:(context)=>DropdownBox()));
                }, child: Text("Next"),),
              ],
            ),

        ],
      ),
    );
  }
}
