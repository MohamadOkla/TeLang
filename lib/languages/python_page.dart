import 'package:flutter/material.dart';

class PythonPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Python"),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          "صفحة Python",
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
