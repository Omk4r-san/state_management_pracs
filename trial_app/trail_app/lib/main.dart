import 'package:flutter/material.dart';
import 'package:flutter_pkg/Ui/bottom_navbar_screen.dart';
import 'package:flutter_pkg/flutter_pkg.dart';
import 'package:flutter_pkg/Ui/top_aricles_screen.dart';
import 'package:trail_app/screens/app_start/app_start_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: AppStartPage(),
    );
  }
}
