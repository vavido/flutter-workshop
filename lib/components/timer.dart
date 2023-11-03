import 'package:flutter/material.dart';

class Timer extends StatelessWidget {
  final int remainingTime;

  const Timer({super.key, required this.remainingTime});

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
