import 'package:flutter/material.dart';

class JavascriptPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Javascript"),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          "صفحة Javascript",
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
