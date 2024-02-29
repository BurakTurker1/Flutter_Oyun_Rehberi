import 'package:flutter/material.dart';
import 'package:flutter_oyun_rehberi/Oyun_Listesi.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme:ThemeData(
        appBarTheme: AppBarTheme(backgroundColor: Colors.deepOrangeAccent,shadowColor: Colors.red,elevation: 12),
        ) ,
      home: Oyun_Listesi(),
    );
  }
}