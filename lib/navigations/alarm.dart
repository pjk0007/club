import 'package:flutter/material.dart';

class Alarm extends StatelessWidget {
  const Alarm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('알림'),
      ),
    );
  }
}
