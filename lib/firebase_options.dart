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
    apiKey: 'AIzaSyDW53v42PPBNYXoX9M6voj-xmqRpw7U1BI',
    appId: '1:1059366790740:web:2019a20f283995d978efc1',
    messagingSenderId: '1059366790740',
    projectId: 'reto-delivery-dev',
    authDomain: 'reto-delivery-dev.firebaseapp.com',
    storageBucket: 'reto-delivery-dev.firebasestorage.app',
    measurementId: 'G-G0FNTQ3TB5',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDuZfUDOZF5cEti2OXUIsEvtyPmEYCZQxw',
    appId: '1:1059366790740:android:ba7316c1d6d6e6a578efc1',
    messagingSenderId: '1059366790740',
    projectId: 'reto-delivery-dev',
    storageBucket: 'reto-delivery-dev.firebasestorage.app',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAwZQ_uvuId9AZujFZraq5HP4Nm-nsPQXM',
    appId: '1:1059366790740:ios:60590c5e024321f978efc1',
    messagingSenderId: '1059366790740',
    projectId: 'reto-delivery-dev',
    storageBucket: 'reto-delivery-dev.firebasestorage.app',
    iosBundleId: 'app.delivery',
  );
}
