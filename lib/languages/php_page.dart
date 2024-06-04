import 'package:flutter/material.dart';

class PhpPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("PHP"),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          "صفحة PHP",
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
