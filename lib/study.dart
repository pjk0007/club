import 'package:flutter/material.dart';
import 'package:samsung_club/cst_bottom_nav.dart' as cst_bottom_nav;

class Study extends StatelessWidget {
  const Study({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(cst_bottom_nav.bottomNav[1]['title']),
      ),
    );
  }
}
