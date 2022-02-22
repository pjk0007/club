import 'package:flutter/material.dart';
import 'package:samsung_club/cst_bottom_nav.dart' as cst_bottom_nav;

class Club extends StatelessWidget {
  const Club({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(cst_bottom_nav.bottomNav[2]['title']),
      ),
    );
  }
}
