import 'package:currency_converter/screens/home_page_c.dart';
import 'package:currency_converter/screens/home_page_m.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: HomePageM());
  }
}

class MyAppC extends StatelessWidget {
  const MyAppC({super.key});

  @override
  Widget build(BuildContext context) {
    return const CupertinoApp(home: HomePageC());
  }
}
