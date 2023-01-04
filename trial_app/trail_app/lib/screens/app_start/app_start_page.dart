import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_pkg/Ui/bottom_navbar_screen.dart';
import 'package:trail_app/screens/home/home_screen.dart';

class AppStartPage extends StatefulWidget {
  const AppStartPage({super.key});

  @override
  State<AppStartPage> createState() => _AppStartPageState();
}

class _AppStartPageState extends State<AppStartPage> {
  @override
  Widget build(BuildContext context) {
    return BottomNavBarScreen(
      builder: (context, tabItem) {
        if (tabItem == TabItem.home) {
          return TextScreen(title: "Home");
        } else if (tabItem == TabItem.search) {
          return TextScreen(title: "Search");
        } else if (tabItem == TabItem.bookMarks) {
          return TextScreen(title: "bookMarks");
        } else {
          return TextScreen(title: "Profile");
        }
      },
    );
  }
}
