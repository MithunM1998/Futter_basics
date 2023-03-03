import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hello/main.dart';
import 'package:hello/screens/popup_menu.dart';

class EmptyScreen extends StatelessWidget {
  static String route="/EmptyScreen";




  @override
  Widget build(BuildContext context) {
    // TODO: implement build
   passDataForNamedRoutes p=ModalRoute.of(context)!.settings.arguments as passDataForNamedRoutes;
    return Scaffold(
      appBar: AppBar(title: Text(p.title),),
      body: Center(child: Text(p.description)),
    );
  }
}


