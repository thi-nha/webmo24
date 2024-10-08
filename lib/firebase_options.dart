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
    apiKey: 'AIzaSyDMvr7zztYzqliVYKClYzEE9jsEkU-pxSc',
    appId: '1:108873628790:web:bf68cb9bc63d76c5153357',
    messagingSenderId: '108873628790',
    projectId: 'mensaapp2',
    authDomain: 'mensaapp2.firebaseapp.com',
    storageBucket: 'mensaapp2.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCbIqoA4FCn9I-SozUurekLalpWBt0SerU',
    appId: '1:108873628790:android:3413d09c0484278f153357',
    messagingSenderId: '108873628790',
    projectId: 'mensaapp2',
    storageBucket: 'mensaapp2.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDJv47rXPbipr5ZsHoawOqY4Wecol_YBX0',
    appId: '1:108873628790:ios:8b6ec907de43aa94153357',
    messagingSenderId: '108873628790',
    projectId: 'mensaapp2',
    storageBucket: 'mensaapp2.appspot.com',
    iosBundleId: 'com.example.mensaApp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyDJv47rXPbipr5ZsHoawOqY4Wecol_YBX0',
    appId: '1:108873628790:ios:8b6ec907de43aa94153357',
    messagingSenderId: '108873628790',
    projectId: 'mensaapp2',
    storageBucket: 'mensaapp2.appspot.com',
    iosBundleId: 'com.example.mensaApp',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyDMvr7zztYzqliVYKClYzEE9jsEkU-pxSc',
    appId: '1:108873628790:web:288b8851231d8243153357',
    messagingSenderId: '108873628790',
    projectId: 'mensaapp2',
    authDomain: 'mensaapp2.firebaseapp.com',
    storageBucket: 'mensaapp2.appspot.com',
  );
}
