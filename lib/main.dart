import 'package:flutter/material.dart';
import 'package:launch_whatsapp/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Launch WhatsApp',
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}
