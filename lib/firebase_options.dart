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
    apiKey: 'AIzaSyCB6A9t03sSg6p1WWkKcHeQRWubzMB_BEQ',
    appId: '1:151016774331:web:01ac59820f1bafa369279e',
    messagingSenderId: '151016774331',
    projectId: 'e-comm-76f52',
    authDomain: 'e-comm-76f52.firebaseapp.com',
    storageBucket: 'e-comm-76f52.firebasestorage.app',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyB6EeePoJdtX6-Kgf4LFLz1c7rQ-jTxWWM',
    appId: '1:151016774331:android:4d1719401a39f32769279e',
    messagingSenderId: '151016774331',
    projectId: 'e-comm-76f52',
    storageBucket: 'e-comm-76f52.firebasestorage.app',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAmPC2-qp0MacuLWWyBhh4WxluyNyONZGA',
    appId: '1:151016774331:ios:4b2d2245800fb40169279e',
    messagingSenderId: '151016774331',
    projectId: 'e-comm-76f52',
    storageBucket: 'e-comm-76f52.firebasestorage.app',
    iosBundleId: 'com.example.eComm',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyAmPC2-qp0MacuLWWyBhh4WxluyNyONZGA',
    appId: '1:151016774331:ios:4b2d2245800fb40169279e',
    messagingSenderId: '151016774331',
    projectId: 'e-comm-76f52',
    storageBucket: 'e-comm-76f52.firebasestorage.app',
    iosBundleId: 'com.example.eComm',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyCB6A9t03sSg6p1WWkKcHeQRWubzMB_BEQ',
    appId: '1:151016774331:web:5503ed2fc46d1fc169279e',
    messagingSenderId: '151016774331',
    projectId: 'e-comm-76f52',
    authDomain: 'e-comm-76f52.firebaseapp.com',
    storageBucket: 'e-comm-76f52.firebasestorage.app',
  );
}
