import 'package:flutter/material.dart';
import 'package:online_greenary_concept/pages/home_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Online Greenary Concept',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: HomePage(title: 'Online Greenary Concept'),
    );
  }
}