import 'package:facebook/screens/tabbar_home_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(Facebook());
  // runApp(MaterialApp(home: TabPage()));
}

class Facebook extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: "/",
      routes: {
        "/": (ctx) => TabbarHomeScreen(),
      },
    );
  }
}
