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
    apiKey: 'AIzaSyDZCa4Z9BuDG7bsWRlOiV12FREFJd5zphc',
    appId: '1:618462469952:web:fb3f4984b6b5703c2424a5',
    messagingSenderId: '618462469952',
    projectId: 'vacmed-fa567',
    authDomain: 'vacmed-fa567.firebaseapp.com',
    storageBucket: 'vacmed-fa567.firebasestorage.app',
    measurementId: 'G-Z2EDFF7YP7',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyB553gFZVqyMPKEKJJCpuZ2B3gvpd2EgwY',
    appId: '1:618462469952:android:b8bb2945411c9dda2424a5',
    messagingSenderId: '618462469952',
    projectId: 'vacmed-fa567',
    storageBucket: 'vacmed-fa567.firebasestorage.app',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyA7W2899-BD38MrlSYSPs5fKR_ZBprAXgU',
    appId: '1:618462469952:ios:e1c86ab6382a17b72424a5',
    messagingSenderId: '618462469952',
    projectId: 'vacmed-fa567',
    storageBucket: 'vacmed-fa567.firebasestorage.app',
    iosBundleId: 'com.example.vacmed',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyA7W2899-BD38MrlSYSPs5fKR_ZBprAXgU',
    appId: '1:618462469952:ios:e1c86ab6382a17b72424a5',
    messagingSenderId: '618462469952',
    projectId: 'vacmed-fa567',
    storageBucket: 'vacmed-fa567.firebasestorage.app',
    iosBundleId: 'com.example.vacmed',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyDZCa4Z9BuDG7bsWRlOiV12FREFJd5zphc',
    appId: '1:618462469952:web:2677051626faad0d2424a5',
    messagingSenderId: '618462469952',
    projectId: 'vacmed-fa567',
    authDomain: 'vacmed-fa567.firebaseapp.com',
    storageBucket: 'vacmed-fa567.firebasestorage.app',
    measurementId: 'G-8MZ69ELMFJ',
  );
}
