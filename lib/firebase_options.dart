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
    apiKey: 'AIzaSyDLTaXKh9mePxHUTmK74D0VhQ717FwdB7A',
    appId: '1:14046809456:web:a687ea0b5ab137714a93b5',
    messagingSenderId: '14046809456',
    projectId: 'todoapp-59842',
    authDomain: 'todoapp-59842.firebaseapp.com',
    storageBucket: 'todoapp-59842.firebasestorage.app',
    measurementId: 'G-ENRJ3J3DS5',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBFpyqH0_QkTdg2fef2i1QGkwfE00NixWE',
    appId: '1:14046809456:android:1e86822f259af21a4a93b5',
    messagingSenderId: '14046809456',
    projectId: 'todoapp-59842',
    storageBucket: 'todoapp-59842.firebasestorage.app',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBLOZN2agGo0utNJQNIaPgDMNUD_PPHgCg',
    appId: '1:14046809456:ios:a084f5a2564d35dd4a93b5',
    messagingSenderId: '14046809456',
    projectId: 'todoapp-59842',
    storageBucket: 'todoapp-59842.firebasestorage.app',
    iosBundleId: 'com.example.todoapp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyBLOZN2agGo0utNJQNIaPgDMNUD_PPHgCg',
    appId: '1:14046809456:ios:a084f5a2564d35dd4a93b5',
    messagingSenderId: '14046809456',
    projectId: 'todoapp-59842',
    storageBucket: 'todoapp-59842.firebasestorage.app',
    iosBundleId: 'com.example.todoapp',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyDLTaXKh9mePxHUTmK74D0VhQ717FwdB7A',
    appId: '1:14046809456:web:af85b2cb4608bc9c4a93b5',
    messagingSenderId: '14046809456',
    projectId: 'todoapp-59842',
    authDomain: 'todoapp-59842.firebaseapp.com',
    storageBucket: 'todoapp-59842.firebasestorage.app',
    measurementId: 'G-PMB6G21222',
  );
}