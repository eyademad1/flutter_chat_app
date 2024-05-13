import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_chat_app/Screens/chat_screen.dart';

final _authInstance = FirebaseAuth.instance;

class ChatListPage extends StatelessWidget {
  static const RuningScreenRoute = "chat_list";

  const ChatListPage({Key? key}) : super(key: key);

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
              "Our Chat",
              style: TextStyle(color: Colors.white),
            )
          ],
        ),
        actions: [
          IconButton(
              color: Color.fromARGB(255, 253, 253, 253),
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(Icons.close))
        ],
      ),
      body: Container(
        color: Colors.grey[800], // Gray background color
        child: StreamBuilder<QuerySnapshot>(
          stream: FirebaseFirestore.instance
              .collection('chats')
              .orderBy('time')
              .snapshots(),
          builder: (context, snapshot) {
            if (snapshot.hasError) {
              return Center(
                child: Text('Error: ${snapshot.error}'),
              );
            }

            if (snapshot.connectionState == ConnectionState.waiting) {
              return Center(
                child: CircularProgressIndicator(),
              );
            }

            List<Widget> chatTiles = [];

            snapshot.data!.docs.forEach((doc) {
              chatTiles.add(
                ChatTile(
                  name: doc['name'],
                  onPressed: () {
                    // Navigate to the next page
                    Navigator.pushNamed(context, ChatScreen.RuningScreenRoute);
                  },
                ),
              );
            });

            return ListView(
              children: chatTiles,
            );
          },
        ),
      ),
    );
  }
}

class ChatTile extends StatelessWidget {
  final String name;
  final VoidCallback onPressed;

  const ChatTile({
    Key? key,
    required this.name,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white, // Gray background color
      padding: EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Add image widget here if needed
          Text(
            name,
            style: TextStyle(
              color: Colors.black, // White font color
              fontSize: 19,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 2),
          ElevatedButton(
            onPressed: onPressed,
            style: ElevatedButton.styleFrom(
              backgroundColor:
                  Color.fromARGB(255, 58, 156, 235), // Button color
            ),
            child: Text(
              'Go Chat',
              style: TextStyle(color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}
