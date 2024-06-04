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
          child: GridView.count(crossAxisCount: 1, children: [
            buildContactCard(
              'محمد مرهف العكلة',
              '+316914265871',
              'https://www.facebook.com/Mohamad Okla',
              'https://www.instagram.com/mohamad__okla/',
            )
          ]),
        ));
  }

  Widget buildContactCard(String name, String phoneNumber, String facebookUrl,
      String instagramUrl) {
    return Card(
      elevation: 4,
      margin: EdgeInsets.all(16),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircleAvatar(
            radius: 50,
          ),
          SizedBox(height: 20),
          Text(
            name,
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 10),
          Text(
            phoneNumber,
            style: TextStyle(fontSize: 18, color: Colors.grey),
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                icon: Icon(Icons.facebook),
                onPressed: () {

                },
                color: Colors.blue,
              ),
              IconButton(
                icon: Icon(Icons.home),
                onPressed: () {

                },
                color: Colors.orange,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
