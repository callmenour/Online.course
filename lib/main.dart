import 'package:flutter/material.dart';
//import 'package:super1/Login.Dart.dart';
import 'package:super1/Login.dart';
import 'package:super1/User.dart';

import 'Labubu2.dart';

void main (){
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  const MaterialApp(
      home: Login(),
    );
  }
}


