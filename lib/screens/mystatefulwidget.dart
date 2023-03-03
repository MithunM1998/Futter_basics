

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyStatefulWidget extends StatefulWidget {


  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyStateFulWidget();
  }


}

class _MyStateFulWidget extends State<MyStatefulWidget>{
  int count=0;
  bool liked=false;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return GestureDetector(
      onTap: (){
      setState(() {
        liked=!liked;
        count++;
      });
      },
      child: Center(
        child: Column(
          children: [
            SizedBox(height: 220,),
            Text("i am statefulWidget",style: TextStyle(fontSize: 30),selectionColor:CupertinoColors.systemBlue,),
            Icon(Icons.favorite,size: 40.0,color: liked? Colors.red:Colors.grey,),
            Text("$count Likes"),
          ],
        ),
      ),
    );
  }

}
