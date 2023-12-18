import 'package:flutter/material.dart';
import 'package:lab4_130/pages/fistpage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        
        colorScheme: ColorScheme.fromSeed(seedColor:  Color.fromARGB(183, 2, 175, 80), background: Color.fromARGB(103, 12, 219, 255)),
        useMaterial3: true,
      ),
      home: const FirstPage(),
    );
  }
}


