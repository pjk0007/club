import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:samsung_club/login/login.dart';
import 'package:samsung_club/main/more/setting.dart';
import '../cst_bottom_nav.dart' as cst_bottom_nav;

class More extends StatefulWidget {
  const More({Key? key}) : super(key: key);

  @override
  State<More> createState() => _MoreState();
}

class _MoreState extends State<More> {
  ScrollController scroll = ScrollController();
  double elevation = 0.0;

  @override
  void initState() {
    super.initState();
    scroll.addListener(() {
      setState(() {
        if(scroll.position.pixels > 0){
          elevation = 5.0;
        } else{
          elevation = 0.0;
        }
      });
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
          itemCount: 300,
          controller: scroll,
          itemBuilder: (c,i){
            return Text('asd');
          }
      ),
      appBar: AppBar(
        elevation: elevation,
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
