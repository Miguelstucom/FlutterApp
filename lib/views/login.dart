import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    return Scaffold(
      backgroundColor: Colors.orange,
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: Center(
          child: Text(
            "LOGIN",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
              fontFamily: "Jonesy",
            ),
          ),
        ),
        centerTitle: true,

      ),
      body: SingleChildScrollView(
      child: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                "FoodieGuard",
                style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                  fontFamily: "Jonesy",

                ),
              ),
              SizedBox(height: 20),
              Image.asset(
                'assets/images/oig.png',
                width: 200,
              ),
              SizedBox(height: 20),
              Container(
                constraints: BoxConstraints(maxWidth: 400.0),

                child: Column(
                  children: [
                    _buildTextFieldWithLabel('User', isPassword: false),
                    const SizedBox(height: 10),
                    _buildTextFieldWithLabel('Password', isPassword: true),
                  ],
                ),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                },
                style: ElevatedButton.styleFrom(
                  primary: Colors.orange,
                  onPrimary: Colors.white,
                  minimumSize: Size(double.infinity, 60),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
                child: const Text(
                  'Log In',
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    fontFamily: "Jonesy",
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      ),
    );
  }
}

Widget _buildTextFieldWithLabel(String label, {required bool isPassword}) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
        label,
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 16,
          fontFamily: "Jonesy",
        ),
      ),
      const SizedBox(height: 5),
      Container(
        decoration: BoxDecoration(
          border: Border.all(
            color: Colors.white,
            width: 1.0,
          ),
          borderRadius: BorderRadius.circular(8.0),
        ),
        child: TextField(
          obscureText: isPassword,
          decoration: InputDecoration(
            hintText: label,
            contentPadding: const EdgeInsets.symmetric(horizontal: 10.0),
            border: InputBorder.none,
          ),
        ),
      ),
    ],
  );
}
