import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:samsung_club/cst_bottom_nav.dart' as cst_bottom_nav;
import 'package:samsung_club/navigations/alarm.dart';

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
              IconButton(
                onPressed: () {
                  Navigator.push(context,CupertinoPageRoute(builder: (c) => Alarm())
                  );
                },
                icon: Icon(Icons.notifications_none_outlined)
              ),
              SizedBox(
                width: 20,
              )
            ],
          )
        ],
      ),
    );
  }
}
