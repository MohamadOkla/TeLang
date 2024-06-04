import 'package:flutter/material.dart';

class DrtPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Dart"),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          "صفحة Dart",
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
