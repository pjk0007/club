import 'package:flutter/material.dart';

class Setting extends StatefulWidget {
  const Setting({Key? key}) : super(key: key);

  @override
  State<Setting> createState() => _SettingState();
}

class _SettingState extends State<Setting> {
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
        title: Text('환경설정'),
      ),
    );
  }
}
