import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:samsung_club/login/login.dart';
import 'package:samsung_club/main/more/setting.dart';
import '../cst_bottom_nav.dart' as cst_bottom_nav;

class More extends StatelessWidget {
  const More({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(cst_bottom_nav.bottomNav[3]['title']),
        actions: [
          Row(
            children: [
              IconButton(
                  onPressed: () {
                    Navigator.push(context,CupertinoPageRoute(builder: (c) => Login())
                    );
                  },
                  icon: Icon(Icons.settings)
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
