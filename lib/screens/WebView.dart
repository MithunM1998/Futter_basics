

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';


class mywebview extends StatelessWidget {


  late WebViewController _controller;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("WebView"),),

      body: const WebView(
        initialUrl: "https://flutter.dev",
        javascriptMode: JavascriptMode.unrestricted,
      ),



    );
  }
}


