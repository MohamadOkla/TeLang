import 'package:flutter/material.dart';

class JavaPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Java"),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          "صفحة Java",
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
