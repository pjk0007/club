import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:samsung_club/cst_bottom_nav.dart' as cst_bottom_nav;
import 'package:samsung_club/navigations/alarm.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
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
