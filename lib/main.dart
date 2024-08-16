import 'package:flutter/material.dart';
import 'package:sample_app/homePage/home_page.dart';
import 'package:sample_app/pages/detail_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const HomePage(),
      routes: {
        '/homepage': (context) => const HomePage(),
        '/detailpage': (context) => DetailPage(),
      },
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
    );
  }
}
