// File generated by FlutterFire CLI.
// ignore_for_file: lines_longer_than_80_chars, avoid_classes_with_only_static_members
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
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for macos - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.windows:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for windows - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
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
    apiKey: 'AIzaSyBUimPwMbRP7npSlHLri9yYzUNPO1F8VoM',
    appId: '1:747763564158:web:fd5ebe9cacfd195356e22f',
    messagingSenderId: '747763564158',
    projectId: 'sectionb-4',
    authDomain: 'sectionb-4.firebaseapp.com',
    storageBucket: 'sectionb-4.appspot.com',
    measurementId: 'G-5KPNF1VF3Y',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDBOGNa0LHWYqzIvuT_oEuEKzcbmYEJfbQ',
    appId: '1:747763564158:android:ebf88567e683314556e22f',
    messagingSenderId: '747763564158',
    projectId: 'sectionb-4',
    storageBucket: 'sectionb-4.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCQ0l37TP1_jBVR7_gkz0rqodKV1_ltnug',
    appId: '1:747763564158:ios:658dea61c63afba056e22f',
    messagingSenderId: '747763564158',
    projectId: 'sectionb-4',
    storageBucket: 'sectionb-4.appspot.com',
    iosBundleId: 'com.example.newapp4',
  );
}
