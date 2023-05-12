import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:newbook/homepage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(

      debugShowCheckedModeBanner: false,
      title: 'Bhajan Book',
      theme: ThemeData(


        primarySwatch: Colors.blueGrey,
      ),
      home: const Homepage()

    );
  }
}

