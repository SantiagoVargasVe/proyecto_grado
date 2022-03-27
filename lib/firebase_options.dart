// File generated by FlutterFire CLI.
// ignore_for_file: lines_longer_than_80_chars
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
      throw UnsupportedError(
        'DefaultFirebaseOptions have not been configured for web - '
        'you can reconfigure this by running the FlutterFire CLI again.',
      );
    }
    // ignore: missing_enum_constant_in_switch
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
    }

    throw UnsupportedError(
      'DefaultFirebaseOptions are not supported for this platform.',
    );
  }

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBephwgtbvsrTff5aEhhHCPIfqI1tKiQ2c',
    appId: '1:225632738949:android:8cb50cac151ed0711813ec',
    messagingSenderId: '225632738949',
    projectId: 'proyecto-grado-c700a',
    storageBucket: 'proyecto-grado-c700a.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAiyI-4WvJwpUZVLXTmzjoUg3PcneZ44wA',
    appId: '1:225632738949:ios:3ea4cbb23e7aaf851813ec',
    messagingSenderId: '225632738949',
    projectId: 'proyecto-grado-c700a',
    storageBucket: 'proyecto-grado-c700a.appspot.com',
    iosClientId: '225632738949-p126sfh10l9hlvpsdo3n0qpg23cfp00s.apps.googleusercontent.com',
    iosBundleId: 'com.proyecto.app',
  );
}
