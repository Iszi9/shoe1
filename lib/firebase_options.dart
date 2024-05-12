import 'dart:io';

import 'package:firebase_core/firebase_core.dart';

FirebaseOptions firebaseOptions = Platform.isAndroid
    ? FirebaseOptions(
    apiKey: 'AIzaSyAiati0aSbGQb4ksCk - 8cqJulaw2fINfGo',
    appId: '1:289648423487:android:bbc8be27a8348ffb9fbe8a',
    messagingSenderId: '289648423487',
    projectId: 'shoe1 - 46df6')
    : FirebaseOptions(
    apiKey: 'AIzaSyAfRoHWlqpLSH4gKHJW2RqmLIfqzIRBKQ4',
    appId: 'com.example.shoe1',
    messagingSenderId: '289648423487',
    projectId: 'shoe1 - 46df6');