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
    apiKey: 'AIzaSyDrPvM7rZENQgkAPJacOwP7mKwwgcZVxug',
    appId: '1:551836360564:web:576dbe0810750d6b9ed621',
    messagingSenderId: '551836360564',
    projectId: 'finanzas-jbp',
    authDomain: 'finanzas-jbp.firebaseapp.com',
    storageBucket: 'finanzas-jbp.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyC0b37n1r07bh_92gvkmpgjWZgykhggR2M',
    appId: '1:551836360564:android:88195f01b3682c5f9ed621',
    messagingSenderId: '551836360564',
    projectId: 'finanzas-jbp',
    storageBucket: 'finanzas-jbp.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDn3E-zkd0CtllVy5tL5Af8Jlc4KG6sP1A',
    appId: '1:551836360564:ios:3df40bf5604ce4749ed621',
    messagingSenderId: '551836360564',
    projectId: 'finanzas-jbp',
    storageBucket: 'finanzas-jbp.appspot.com',
    iosBundleId: 'com.example.act2',
  );
}
