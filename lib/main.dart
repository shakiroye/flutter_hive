import 'package:flutter/material.dart';
import 'package:flutter_hive/home_page.dart';
import 'package:hive/hive.dart';

void main() {
  //intialise hive
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const HomePage();
  }
}
