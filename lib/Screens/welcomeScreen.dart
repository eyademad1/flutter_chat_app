import 'package:flutter/material.dart';
import 'package:flutter_chat_app/MyWidgets/My_Button.dart';
import 'package:flutter_chat_app/Screens/sign_in_screen.dart';
import 'package:flutter_chat_app/Screens/sign_up_screen.dart';

class welcomeScreen extends StatelessWidget {
  static const RuningScreenRoute = "welcomeScreen";

  const welcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Column(
              children: [
                Container(
                  height: 180,
                  child: Image.asset(
                    'D:/Mobile_Project/flutter_chat_app/images/Welcome_icon.png',
                    fit: BoxFit.cover,
                  ),
                ),
                Text("Chat App",
                    style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 34, 140, 188),
                    )),
              ],
            ),
            SizedBox(height: 30), // space between the (image,text) and buttons
            // creating the shape of the buttons
            MyButton(
              color: Color.fromARGB(255, 85, 193, 243),
              title: "Sign in",
              onPressed: () {
                Navigator.pushNamed(context, SignInScreen.RuningScreenRoute);
              },
            ),
            MyButton(
              color: Color.fromARGB(255, 167, 194, 206),
              title: "Sign Up",
              onPressed: () {
                Navigator.pushNamed(context, SignUpScreen.RuningScreenRoute);
              },
            )
          ],
        ),
      ),
    );
  }
}
