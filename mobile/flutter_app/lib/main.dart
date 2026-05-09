import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '智能教育助手',
      home: Scaffold(
        appBar: AppBar(title: Text('首页')),
        body: Center(child: Text('欢迎')),
      ),
    );
  }
}
