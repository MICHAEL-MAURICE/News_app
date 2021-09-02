import 'package:flutter/material.dart';
class Webview extends StatelessWidget {
  late final  String url;
  Webview(this.url);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Webview(url),
    );
  }
}
