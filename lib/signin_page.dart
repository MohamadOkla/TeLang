import 'package:app/login_page.dart';
import 'package:flutter/material.dart';
import 'home_page.dart';

class SigninPage extends StatefulWidget {
  const SigninPage({Key? key});

  @override
  State<SigninPage> createState() => _SigninPageState();
}

class _SigninPageState extends State<SigninPage> {
  final TextEditingController usernameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmPasswordController =
      TextEditingController();
  bool isPasswordMatch = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.blue[50],
          ),
          body: Container(
            color: Colors.blue[50],
            padding: EdgeInsets.all(16),
            child: ListView(children: [
              Container(
                height: 100,
                child: Center(
                  child: Text(
                    "إنشاء حساب ",
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.blue,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 40),
              TextFormField(
                controller: usernameController,
                style: TextStyle(color: Colors.blue),
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.blue[100],
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(25),
                  ),
                  hintText: "اسم المستخدم",
                  hintStyle: TextStyle(fontSize: 14, color: Colors.blue[800]),
                  prefixIcon: Icon(Icons.person, color: Colors.blue),
                ),
              ),
              SizedBox(height: 10),
              TextFormField(
                controller: emailController,
                style: TextStyle(color: Colors.blue),
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.blue[100],
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(25),
                  ),
                  hintText: "أدخل بريدك الإلكتروني",
                  hintStyle: TextStyle(fontSize: 14, color: Colors.blue[800]),
                  prefixIcon: Icon(Icons.email, color: Colors.blue),
                ),
              ),
              SizedBox(height: 10),
              TextFormField(
                controller: passwordController,
                obscureText: true,
                style: TextStyle(color: Colors.blue),
                onChanged: (value) {
                  setState(() {
                    isPasswordMatch = value == confirmPasswordController.text;
                  });
                },
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.blue[100],
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(25),
                  ),
                  hintText: "أدخل كلمة المرور",
                  hintStyle: TextStyle(fontSize: 14, color: Colors.blue[800]),
                  prefixIcon: Icon(Icons.lock, color: Colors.blue),
                ),
              ),
              SizedBox(height: 10),
              TextFormField(
                controller: confirmPasswordController,
                obscureText: true,
                style: TextStyle(color: Colors.blue),
                onChanged: (value) {
                  setState(() {
                    isPasswordMatch = value == passwordController.text;
                  });
                },
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.blue[100],
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(25),
                  ),
                  hintText: "أعد إدخال كلمة المرور",
                  hintStyle: TextStyle(fontSize: 14, color: Colors.blue[800]),
                  prefixIcon: Icon(Icons.lock, color: Colors.blue),
                ),
              ),
              SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      if (isPasswordMatch) {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(builder: (context) => HomePage()),
                        );
                      }
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor:
                          isPasswordMatch ? Colors.blue : Colors.grey,
                      padding:
                          EdgeInsets.symmetric(horizontal: 100, vertical: 15),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25),
                      ),
                    ),
                    child: Text(
                      ' إنشاء حساب',
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              TextButton(
                onPressed: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => Login()),
                  );
                },
                child: Text(
                  "اذهب الى صفحة تسجيل الدخول",
                  style: TextStyle(color: Colors.blue),
                ),
              ),
            ]),
          ),
        ));
  }
}
