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
    apiKey: 'AIzaSyCQaMwSB9wQMV1xL4dLzs9c7dLBFTkY-Ho',
    appId: '1:521010789379:web:27d961bd4c908dcbc42236',
    messagingSenderId: '521010789379',
    projectId: 'popovd-mis-lab4',
    authDomain: 'popovd-mis-lab4.firebaseapp.com',
    storageBucket: 'popovd-mis-lab4.firebasestorage.app',
    measurementId: 'G-Z9K5VZPHN4',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBuKUmygOhf_DSbrDgU-TOMXcx3jtB1ykc',
    appId: '1:521010789379:android:9356cca948797d0dc42236',
    messagingSenderId: '521010789379',
    projectId: 'popovd-mis-lab4',
    storageBucket: 'popovd-mis-lab4.firebasestorage.app',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDr6zvr6cWHWcRR8N8RGPmlNhx1vLIOycY',
    appId: '1:521010789379:ios:c9cc551d54dd56c8c42236',
    messagingSenderId: '521010789379',
    projectId: 'popovd-mis-lab4',
    storageBucket: 'popovd-mis-lab4.firebasestorage.app',
    iosBundleId: 'com.example.misLab4',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyDr6zvr6cWHWcRR8N8RGPmlNhx1vLIOycY',
    appId: '1:521010789379:ios:c9cc551d54dd56c8c42236',
    messagingSenderId: '521010789379',
    projectId: 'popovd-mis-lab4',
    storageBucket: 'popovd-mis-lab4.firebasestorage.app',
    iosBundleId: 'com.example.misLab4',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyCQaMwSB9wQMV1xL4dLzs9c7dLBFTkY-Ho',
    appId: '1:521010789379:web:1b4ec6581b722b95c42236',
    messagingSenderId: '521010789379',
    projectId: 'popovd-mis-lab4',
    authDomain: 'popovd-mis-lab4.firebaseapp.com',
    storageBucket: 'popovd-mis-lab4.firebasestorage.app',
    measurementId: 'G-6YD7HCHH23',
  );

}