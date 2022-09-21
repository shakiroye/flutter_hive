import 'package:flutter/material.dart';
import 'package:flutter_hive/home_page.dart';
import 'package:hive_flutter/hive_flutter.dart';

void main() async{

  //intialise hive
  await Hive.initFlutter();

  // Open the box
  var box= await Hive.openBox('mybox');

  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const HomePage();
  }
}