import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class TopArticlesScreen extends StatefulWidget {
  const TopArticlesScreen({super.key});

  @override
  State<TopArticlesScreen> createState() => _TopArticlesScreenState();
}

class _TopArticlesScreenState extends State<TopArticlesScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        child: Text("Top Articles Screen"),
      ),
    );
  }
}
