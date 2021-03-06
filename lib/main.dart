import 'package:flutter/material.dart';
import 'package:flutter_lesson_one/screens/car_detail_screen.dart';
import 'package:flutter_lesson_one/screens/category_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routes: {
        '/':(context) => CategoryScreen(),
        CarDetailScreen.routeArgs:(context)=>CarDetailScreen(),
      },
    );
  }
}

