import 'package:flutter/material.dart';
import 'package:flutter_application_3/home_screen/login.dart';
import 'package:flutter_application_3/home_screen/menu.dart';

import 'home_screen/dolares.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Login(),
    );
  }
}
