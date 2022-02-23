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
  PageController pageController = PageController();

  @override
  void initState() {
    super.initState();
    pageController = PageController();
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox.expand(
        child: PageView(
          controller: pageController,
          onPageChanged: (index) {
            setState(() => tab = index);
          },
          children: cst_bottomnavbar.bottomNav.map((e) => Container(child: e['body'])).toList(),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: tab,
        onTap: (index) {
          setState(() {
            tab = index;
            pageController.animateToPage(index, duration: Duration(milliseconds: 200), curve: Curves.easeInOut);
          });
        },
        items: cst_bottomnavbar.bottomNav
            .map((e) => BottomNavigationBarItem(
                label: e['label'],
                icon: Icon(e['icon']),
                activeIcon: Icon(e['activateIcon'])))
            .toList()
      ),
    );
  }
}
