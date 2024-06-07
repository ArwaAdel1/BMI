
import 'package:flutter/material.dart';
import 'package:cupertino_icons/cupertino_icons.dart';

import 'HomePage.dart';


void main() {
  runApp(App());
}
class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}





