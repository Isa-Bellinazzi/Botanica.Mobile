import 'package:botanica_mobile/screens/home.dart';
import 'package:botanica_mobile/themes/botanics_theme.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MagnaBotanics());
}

class MagnaBotanics extends StatelessWidget {
  const MagnaBotanics({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Magna Botanic\'s',
      theme: myTheme,
      home: const Home(),
    );
  }
}
