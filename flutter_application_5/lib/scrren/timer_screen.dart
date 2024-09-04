import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_application_5/core/app_dimens/app_dimens.dart';

class TimerScreen extends StatefulWidget {
  const TimerScreen({super.key});

  @override
  State<TimerScreen> createState() => _TimerScreenState();
}

class _TimerScreenState extends State<TimerScreen> {
   
late Timer _timer;
  Duration _duration = const Duration(hours: 0, minutes: 0, seconds: 15);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: GestureDetector(child: Text(_duration.toString().split('.').first,
          style: const TextStyle(fontSize: 48),),
          
          onTap: () {
          _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      setState(() {
        if (_duration.inSeconds > 0) {
          _duration -= const Duration(seconds: 1);
        } else {
          _timer.cancel();
        }
      }
      );
      }
      );
      }
      )
      )
      );
  }
}
