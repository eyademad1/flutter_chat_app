import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_chat_app/Screens/chat_list_screen.dart';
import 'package:flutter_chat_app/dashboard/view/page/dashboard_page.dart';

class NewChatPage extends StatefulWidget {
  static const RuningScreenRoute = "create_new";

  @override
  _NewChatPageState createState() => _NewChatPageState();
}

class _NewChatPageState extends State<NewChatPage> {
  TextEditingController _chatNameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
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
              "Create New Chat",
              style: TextStyle(color: Colors.white),
            )
          ],
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            TextField(
              controller: _chatNameController,
              decoration: InputDecoration(
                labelText: 'Chat Name',
                labelStyle: TextStyle(color: Colors.blue),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.blue),
                ),
              ),
              style: TextStyle(color: Colors.black),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                createNewChat();
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue, // Button color
              ),
              child: Text(
                'Create Chat',
                style: TextStyle(color: Colors.white), // Text color
              ),
            ),
          ],
        ),
      ),
    );
  }

  void createNewChat() {
    String chatName = _chatNameController.text;

    // Add the chat to Firestore
    FirebaseFirestore.instance.collection('chats').add({
      'name': chatName,
      'time' : FieldValue.serverTimestamp(),
    }).then((DocumentReference docRef) {
      // Navigate back to the previous screen
      Navigator.pushNamed(context, DashboardPage.RuningScreenRoute);
    }).catchError((error) {
      // Handle error
      print(error);
    });
  }
}
