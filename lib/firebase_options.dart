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
    apiKey: 'AIzaSyAmTerw5o0-NXeClvEpOlMrZv0NRTM0Zfg',
    appId: '1:754680307958:web:373f3c67dcb8bf983dccd7',
    messagingSenderId: '754680307958',
    projectId: 'astrology-71c0a',
    authDomain: 'astrology-71c0a.firebaseapp.com',
    storageBucket: 'astrology-71c0a.appspot.com',
    measurementId: 'G-MWLSJV5834',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDK--nh1bKyspkkFpDCHJNIIVDz5aow9Dg',
    appId: '1:754680307958:android:26922e4615bbc8ed3dccd7',
    messagingSenderId: '754680307958',
    projectId: 'astrology-71c0a',
    storageBucket: 'astrology-71c0a.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAi-XHcHIjBbpUWIxSFHh5HsQO19GhnP4k',
    appId: '1:754680307958:ios:442cd28accae20d93dccd7',
    messagingSenderId: '754680307958',
    projectId: 'astrology-71c0a',
    storageBucket: 'astrology-71c0a.appspot.com',
    iosBundleId: 'com.example.astrology',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyAi-XHcHIjBbpUWIxSFHh5HsQO19GhnP4k',
    appId: '1:754680307958:ios:442cd28accae20d93dccd7',
    messagingSenderId: '754680307958',
    projectId: 'astrology-71c0a',
    storageBucket: 'astrology-71c0a.appspot.com',
    iosBundleId: 'com.example.astrology',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyAmTerw5o0-NXeClvEpOlMrZv0NRTM0Zfg',
    appId: '1:754680307958:web:fa4ccb10e9af7b4f3dccd7',
    messagingSenderId: '754680307958',
    projectId: 'astrology-71c0a',
    authDomain: 'astrology-71c0a.firebaseapp.com',
    storageBucket: 'astrology-71c0a.appspot.com',
    measurementId: 'G-LJRSJQ1ZZD',
  );
}
