import 'package:flutter/material.dart';
import 'package:myonlineshop/const/bottomnavigation.dart';
import 'package:myonlineshop/pages/Login_screen.dart';
import 'package:myonlineshop/pages/onboard.dart';
import 'package:myonlineshop/pages/personal_details.dart';
import 'package:myonlineshop/pages/signup.dart';



void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: OnBoarding()
    );
  }
}




