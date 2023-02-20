import 'package:courseappui/screen/course_screen.dart';
import 'package:courseappui/screen/home_page.dart';
import 'package:flutter/material.dart';

void main()=>  runApp(const MyApp());
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white
      ),
      home: HomePage(),
    );
  }
}


