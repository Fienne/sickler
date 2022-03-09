import 'package:flutter/material.dart';
import 'package:sickler/Theme.dart';
import 'package:sickler/screens/homescreen/homescreen.dart';

void main() {
  runApp(const Sickler());
}

class Sickler extends StatelessWidget {
  const Sickler({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Sickler',
      theme: sicklerLightTheme(context),
      home: const SicklerHomeScreen(),
    );
  }
}
