import 'package:flutter/material.dart';

class ContactPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'تواصل معنا',
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.white,
        centerTitle: true,
        iconTheme: IconThemeData(color: Colors.black),
      ),
      body: Center(
        child: GridView.count(
          crossAxisCount: 1,
          children: [
            buildContactCard(
              'محمد مرهف العكلة',
              'lib/asset/me.png',
            ),
            buildContactCard(
              'محمد سعد العوض',
              'lib/asset/saad.png',
            ),
            buildContactCard(
              'محمد احمد الحمود',
              'lib/asset/aslan.png',
            ),
            buildContactCard(
              'محمد السحل',
              'lib/asset/mep.png',
            ),
          ],
        ),
      ),
    );
  }

  Widget buildContactCard(String name, String imagePath) {
    return Card(
      elevation: 4,
      margin: EdgeInsets.all(10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircleAvatar(
            radius: 50,
            backgroundImage: AssetImage(imagePath),
          ),
          Text(
            name,
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                icon: Icon(Icons.facebook),
                onPressed: () {},
                color: Colors.blue,
              ),
              IconButton(onPressed: () {}, icon: Icon(Icons.call_outlined))
            ],
          ),
        ],
      ),
    );
  }
}
