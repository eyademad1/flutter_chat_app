import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

class UserDetailsPage extends StatelessWidget {
  final _authInstance = FirebaseAuth.instance;
  static const RuningScreenRoute = "current_user";

  @override
  Widget build(BuildContext context) {
    final User? user = _authInstance.currentUser;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Row(
          children: [
            Image.asset(
              'D:/Mobile_Project/flutter_chat_app_with_dashboard/flutter_chat_app/images/Welcome_icon.png',
              height: 70,
            ),
            SizedBox(width: 20),
            Text(
              "Current User",
              style: TextStyle(color: Colors.white),
            )
          ],
        ),
      ),
      body: Column(
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
          SizedBox(height: 30),
          Center(
            child: user != null
                ? Text(
                    'Email: ${user.email}',
                    style: TextStyle(fontSize: 18),
                  )
                : Text('No user logged in.'),
          ),
        ],
      ),
    );
  }
}
