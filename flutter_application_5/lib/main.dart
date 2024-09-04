import 'package:flutter/material.dart';
import 'package:flutter_application_5/scrren/init_screen.dart';
import 'package:flutter_application_5/scrren/main_screen.dart';
import 'package:flutter_application_5/scrren/timer_screen.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: TimerScreen()
    );
  }
}