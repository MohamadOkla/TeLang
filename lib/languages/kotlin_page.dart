import 'package:flutter/material.dart';

class KotlinPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Kotlin"),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          "صفحة Kotlin",
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
