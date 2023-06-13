import 'package:financeapp/colors.dart';
import 'package:financeapp/home_screen.dart';
import 'package:flutter/material.dart';

import 'helpers/custom_Textfield.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController _email = TextEditingController(text: "sam@gmail.com");
  TextEditingController _password = TextEditingController(text: "123@123");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primary,
      body: getBody(),
    );
  }

  Widget getBody() {
    var size = MediaQuery.of(context).size;
    return SafeArea(
      child: Center(
        child: Column(
          children: [
            SizedBox(height: 50),
            Container(
              width: 120,
              height: 120,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: AssetImage("images/profile.jpg"),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(height: 80),
            CustomTextField(
              text: 'Email Address',
              hinttext: 'Email',
              icon: Icon(Icons.email_outlined),
              obscureText: false,
              controller: _email,
            ),
            CustomTextField(
              text: 'Password',
              hinttext: '123@123',
              icon: Icon(Icons.lock_outline_rounded),
              obscureText: true,
              controller: _password,
            ),
            SizedBox(height: 80),
            GestureDetector(
              onTap: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => HomeScreen(),
                  ),
                );
              },
              child: Container(
                padding: EdgeInsets.all(16),
                margin: EdgeInsets.symmetric(horizontal: 25),
                decoration: BoxDecoration(
                  color: buttonColor,
                  borderRadius: BorderRadius.circular(25),
                ),
                child: Center(
                  child: Text(
                    'Login',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.only(left: 26, right: 26),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Sign Up!',
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.blue,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                  Text(
                    'Forgot PassWord?',
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.blue,
                      fontWeight: FontWeight.w300,
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
