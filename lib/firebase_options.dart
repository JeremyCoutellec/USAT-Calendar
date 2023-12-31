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
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for ios - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
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
    apiKey: 'AIzaSyDCa4aLGmxfYnZ0bgjUsVvnTpm94o1GtPg',
    appId: '1:866441010303:web:6edd2a23dc622acf66b34a',
    messagingSenderId: '866441010303',
    projectId: 'usat-calendar',
    authDomain: 'usat-calendar.firebaseapp.com',
    databaseURL: 'https://usat-calendar-default-rtdb.europe-west1.firebasedatabase.app',
    storageBucket: 'usat-calendar.appspot.com',
    measurementId: 'G-KYZDGVP8Z3',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBDKa5oMtCCyPJ95gezTRfocB3JGgBMHlw',
    appId: '1:866441010303:android:29069c8b760fb63a66b34a',
    messagingSenderId: '866441010303',
    projectId: 'usat-calendar',
    databaseURL: 'https://usat-calendar-default-rtdb.europe-west1.firebasedatabase.app',
    storageBucket: 'usat-calendar.appspot.com',
  );
}
