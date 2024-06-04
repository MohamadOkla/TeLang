import 'package:flutter/material.dart';

class FlutterPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter"),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          "صفحة Flutter",
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
