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
        return macos;
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
    apiKey: 'AIzaSyCSjavDIIAdyGcID0ZPJ1mHxZ6aS-vu3Qk',
    appId: '1:475066333765:web:d48ce37b55a500cc04c12c',
    messagingSenderId: '475066333765',
    projectId: 'samplelfir',
    authDomain: 'samplelfir.firebaseapp.com',
    storageBucket: 'samplelfir.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyD-JDE7X9yssx80rVDuXcEFnXeYRoySNAM',
    appId: '1:475066333765:android:648e635b0a778bc104c12c',
    messagingSenderId: '475066333765',
    projectId: 'samplelfir',
    storageBucket: 'samplelfir.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyB65FQeR4FB9N9Gw3UECVOzbwlytIi_3Zg',
    appId: '1:475066333765:ios:c0e866e554de961504c12c',
    messagingSenderId: '475066333765',
    projectId: 'samplelfir',
    storageBucket: 'samplelfir.appspot.com',
    iosClientId: '475066333765-s3m64gc7a052qbk0al73rg4ui5v5vij1.apps.googleusercontent.com',
    iosBundleId: 'com.example.samplelfir',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyB65FQeR4FB9N9Gw3UECVOzbwlytIi_3Zg',
    appId: '1:475066333765:ios:c0e866e554de961504c12c',
    messagingSenderId: '475066333765',
    projectId: 'samplelfir',
    storageBucket: 'samplelfir.appspot.com',
    iosClientId: '475066333765-s3m64gc7a052qbk0al73rg4ui5v5vij1.apps.googleusercontent.com',
    iosBundleId: 'com.example.samplelfir',
  );
}
