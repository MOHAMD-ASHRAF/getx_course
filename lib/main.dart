import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_course/home_screen.dart';
import 'package:getx_course/second_screen.dart';

import 'first_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialRoute: "/",
      getPages: [
        GetPage(name: "/", page:()=> const HomeScreen()),
        GetPage(name: "/firstScreen", page:()=> const FirstScreen()),
        GetPage(name: "/SecondScreen", page:()=> const SecondScreen()),
      ],
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const HomeScreen(),
    );
  }
}
