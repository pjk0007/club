import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:samsung_club/style.dart' as style;
import 'package:samsung_club/cst_bottom_nav.dart' as cst_bottomnavbar;
import 'firebase_options.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform
  );
  runApp(MaterialApp(
    theme: style.appTheme,
    home: MyApp(),
    debugShowCheckedModeBanner: false
  ));
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int tab = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: cst_bottomnavbar.bottomNav[tab]['body'],
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: tab,
          onTap: (index) {
            setState(() {
              tab = index;
            });
          },
          items: cst_bottomnavbar.bottomNav
              .map((e) => BottomNavigationBarItem(
                  label: e['label'],
                  icon: Icon(e['icon']),
                  activeIcon: Icon(e['activateIcon'])))
              .toList()),
    );
  }
}
