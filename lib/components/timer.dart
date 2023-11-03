import 'package:flutter/material.dart';
import "dart:async";

class TimerComponent extends StatelessWidget {
  final int remainingTime;

  const TimerComponent({super.key, required this.remainingTime});

  String get remainingTimeString {
    final minutes =
        (this.remainingTime / 60).floor().toString().padLeft(2, '0');
    final seconds =
        (this.remainingTime % 60).floor().toString().padLeft(2, '0');
    return '$minutes:$seconds';
  }


  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(remainingTimeString,
          style: TextStyle(
            fontSize: 100,
            fontWeight: FontWeight.bold,
          )),
    );
  }
}
