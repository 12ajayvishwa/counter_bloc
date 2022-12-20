import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  final String title;
  final Color color;
  const HomeScreen({Key? key, required this.title, required this.color}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
    );
  }
}