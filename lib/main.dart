import 'package:flutter/material.dart';

import 'screeen/apicalling.dart';
import 'screeen/complete.dart';
import 'screeen/designui.dart';
import 'screeen/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:Design(),
    );
  }
}
