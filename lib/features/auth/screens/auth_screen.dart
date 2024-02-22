import 'package:flutter/material.dart';
import 'package:ghack_app/presentation/components/assets_manager.dart';
import 'package:ghack_app/presentation/components/widgets.dart';

class AuthScreen extends StatelessWidget {
  const AuthScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: Image.asset(
              'assets/images/login.png',
              fit: BoxFit.cover,
            ),
          ),
          Positioned(
            top: 350,
            left: 0,
            right: 0,
            bottom: 0,
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40),
                    topRight: Radius.circular(40),
                  )),
              padding: EdgeInsets.all(20.0),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "Welcome back!",
                      style: TextStyle(
                          fontSize: 40,
                          fontWeight: FontWeight.bold,
                          color: Colors.red),
                    ),
                    Text("Good to see you again",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w200,
                        )),
                    SizedBox(height: 20.0),
                    customTextField("Email", false),
                    SizedBox(height: 20),
                    customTextField("Password", true), // Spacer
                    SizedBox(height: 20.0), // Spacer
                    customElevatedButton("Login", Colors.green, () => null),
                    SizedBox(height: 20.0), // Spacer
                    Text("Forgot password?",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w200,
                        )),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
