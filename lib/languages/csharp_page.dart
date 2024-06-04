import 'package:flutter/material.dart';

class CsharpPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("C#"),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          "صفحة C#",
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
