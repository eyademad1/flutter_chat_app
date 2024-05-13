// File generated by FlutterFire CLI.
// ignore_for_file: type=lint
import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

/// Default [FirebaseOptions] for use with your Firebase apps.
///
/// Example:
/// ```dart
/// import 'firebase_options.dart';
/// // ...
/// await Firebase.initializeApp(
///   options: DefaultFirebaseOptions.currentPlatform,
/// );
/// ```
class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    if (kIsWeb) {
      return web;
    }
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        return ios;
      case TargetPlatform.macOS:
        return macos;
      case TargetPlatform.windows:
        return windows;
      case TargetPlatform.linux:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for linux - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyBWJP95wEwC4YrxHBosGgCHPr2O_XY_GOQ',
    appId: '1:564422764030:web:ff9d7ea66b51bf14d94caf',
    messagingSenderId: '564422764030',
    projectId: 'chat-app-project-a3bf4',
    authDomain: 'chat-app-project-a3bf4.firebaseapp.com',
    storageBucket: 'chat-app-project-a3bf4.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCepiq0QTVMCabD6vQ9i0rXxGcW6cRVf4I',
    appId: '1:564422764030:android:1e79c696e8cfc442d94caf',
    messagingSenderId: '564422764030',
    projectId: 'chat-app-project-a3bf4',
    storageBucket: 'chat-app-project-a3bf4.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBXnHfDYrwWLgkvWBC4iuXugss0fkcR2_Q',
    appId: '1:564422764030:ios:ce6397789693f4b6d94caf',
    messagingSenderId: '564422764030',
    projectId: 'chat-app-project-a3bf4',
    storageBucket: 'chat-app-project-a3bf4.appspot.com',
    iosBundleId: 'com.example.flutterChatApp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyBXnHfDYrwWLgkvWBC4iuXugss0fkcR2_Q',
    appId: '1:564422764030:ios:ce6397789693f4b6d94caf',
    messagingSenderId: '564422764030',
    projectId: 'chat-app-project-a3bf4',
    storageBucket: 'chat-app-project-a3bf4.appspot.com',
    iosBundleId: 'com.example.flutterChatApp',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyBWJP95wEwC4YrxHBosGgCHPr2O_XY_GOQ',
    appId: '1:564422764030:web:c0d7985dd2428ea9d94caf',
    messagingSenderId: '564422764030',
    projectId: 'chat-app-project-a3bf4',
    authDomain: 'chat-app-project-a3bf4.firebaseapp.com',
    storageBucket: 'chat-app-project-a3bf4.appspot.com',
  );
}
