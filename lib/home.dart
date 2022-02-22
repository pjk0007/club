import 'package:flutter/material.dart';
import 'package:samsung_club/cst_bottom_nav.dart' as cst_bottom_nav;

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(cst_bottom_nav.bottomNav[0]['title']),
        actions: [
          Row(
            children: [
              Icon(Icons.notifications_none_outlined),
              SizedBox(width: 20,)
            ],
          )
        ],

      ),
    );
  }
}
