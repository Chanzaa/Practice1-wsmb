import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class WebPage extends StatelessWidget {
  var website;

  WebPage({required this.website});


  @override
  Widget build(BuildContext context) {
    var controller = WebViewController()
      ..setJavaScriptMode(JavaScriptMode.unrestricted)
      ..loadRequest(Uri.parse("https://google.com/${website}"));
    return Scaffold(
        appBar: AppBar(
          title: Text("Home Page"),
          backgroundColor: Theme.of(context).colorScheme.primary,
          foregroundColor: Colors.white,
        ),
      body:WebViewWidget(controller: controller),
    ) ;
  }
}
