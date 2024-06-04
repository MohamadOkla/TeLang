import 'package:flutter/material.dart';
import 'contact_page.dart';
import 'language_page.dart';
import 'languages/python_page.dart';
import 'languages/dart_page.dart';
import 'languages/flutter_page.dart';
import 'languages/javascript_page.dart';
import 'languages/kotlin_page.dart';
import 'languages/cplusplus_page.dart';
import 'languages/java_page.dart';
import 'languages/php_page.dart';
import 'languages/swift_page.dart';
import 'languages/csharp_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "تعلم لغات البرمجة",
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.blue[50],
      ),
      endDrawer: Drawer(
        backgroundColor: Colors.blue[50],
        child: ListView(
          children: [
            DrawerHeader(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "TeLang",
                    style: TextStyle(fontSize: 24, color: Colors.black),
                  ),
                ],
              ),
            ),
            _buildDrawerItem(Icons.home, "الصفحة الرئيسية", () {
              Navigator.pop(context);
            }),
            _buildDrawerItem(Icons.language, "اللغات", () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => LanguagePage()),
              );
            }),
            _buildDrawerItem(Icons.phone, "تواصل معنا", () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ContactPage()),
              );
            }),
          ],
        ),
      ),
      body: Container(
        color: Colors.blue[50],
        child: LayoutBuilder(
          builder: (context, constraints) {
            int crossAxisCount = 2;
            if (constraints.maxWidth > 600) {
              crossAxisCount = 3;
            }
            if (constraints.maxWidth > 900) {
              crossAxisCount = 4;
            }
            return GridView.count(
              crossAxisCount: crossAxisCount,
              children: [
                _buildInkWell(
                    context, "Python", "Python تعلم لغة", PythonPage()),
                _buildInkWell(context, "Dart", "Dart تعلم لغة", DrtPage()),
                _buildInkWell(
                    context, "Flutter", "Flutter تعلم لغة", FlutterPage()),
                _buildInkWell(context, "Javascript", "Javascript تعلم لغة",
                    JavascriptPage()),
                _buildInkWell(
                    context, "Kotlin", "Kotlin تعلم لغة", KotlinPage()),
                _buildInkWell(context, "C++", "C++ تعلم لغة", CplusplusPage()),
                _buildInkWell(context, "C#", "C# تعلم لغة", CsharpPage()),
                _buildInkWell(context, "Java", "Java تعلم لغة", JavaPage()),
                _buildInkWell(context, "PHP", "PHP تعلم لغة", PhpPage()),
                _buildInkWell(context, "Swift", "Swift تعلم لغة", SwiftPage()),
              ],
            );
          },
        ),
      ),
    );
  }

  Widget _buildDrawerItem(IconData icon, String title, VoidCallback onTap) {
    return Column(
      children: [
        ListTile(
          title: Text(
            title,
            style: const TextStyle(fontSize: 24, color: Colors.black),
            textDirection: TextDirection.rtl,
          ),
          onTap: onTap,
          leading: Icon(
            icon,
            size: 50,
            color: Colors.black,
          ),
        ),
        const Divider(
          height: 1,
        ),
      ],
    );
  }

  Widget _buildInkWell(
      BuildContext context, String title, String subtitle, Widget page) {
    return Container(
        child: InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => page),
        );
      },
      child: Card(
        color: Colors.blue[100],
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ListTile(
              title: Text(
                title,
                style: TextStyle(fontSize: 24),
                textAlign: TextAlign.center,
              ),
              subtitle: Text(
                subtitle,
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
