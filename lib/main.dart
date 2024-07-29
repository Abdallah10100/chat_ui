import 'package:flutter/material.dart';
import 'chat_screen_with_tabs/tabs.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ChatScreenWithTabs(),
    );
  }
}
