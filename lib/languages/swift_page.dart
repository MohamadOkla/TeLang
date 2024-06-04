import 'package:flutter/material.dart';

class SwiftPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Swift"),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          "صفحة Swift",
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
