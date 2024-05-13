import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_chat_app/Screens/chat_list_screen.dart';
import 'package:flutter_chat_app/Screens/chat_screen.dart';
import 'package:flutter_chat_app/Screens/create_new_chat_screen.dart';
import 'package:flutter_chat_app/Screens/current_user.dart';
import 'package:flutter_chat_app/Screens/sign_in_screen.dart';
import 'package:flutter_chat_app/Screens/sign_up_screen.dart';
import 'package:flutter_chat_app/dashboard/view/page/dashboard_page.dart';
import 'package:flutter_chat_app/firebase_options.dart';
import 'Screens/welcomeScreen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final _authInstance = FirebaseAuth.instance;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'chat app',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      // home: SignInScreen(),
      initialRoute: welcomeScreen.RuningScreenRoute,
      //  _authInstance.currentUser != null
      //     ? ChatScreen.RuningScreenRoute
      //     : welcomeScreen.RuningScreenRoute,
      routes: {
        welcomeScreen.RuningScreenRoute: (context) => welcomeScreen(),
        SignInScreen.RuningScreenRoute: (context) => SignInScreen(),
        SignUpScreen.RuningScreenRoute: (context) => SignUpScreen(),
        ChatScreen.RuningScreenRoute: (context) => ChatScreen(),
        NewChatPage.RuningScreenRoute: (context) => NewChatPage(),
        ChatListPage.RuningScreenRoute: (context) => ChatListPage(),
        DashboardPage.RuningScreenRoute: (context) => DashboardPage(),
        UserDetailsPage.RuningScreenRoute: (context) => UserDetailsPage(),
      },
    );
  }
}
