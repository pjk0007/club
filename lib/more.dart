import 'package:flutter/material.dart';
import 'cst_bottom_nav.dart' as cst_bottom_nav;

class More extends StatelessWidget {
  const More({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(cst_bottom_nav.bottomNav[3]['title']),
      ),
    );
  }
}
