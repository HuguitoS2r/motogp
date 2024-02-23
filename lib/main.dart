import 'package:flutter/material.dart';
import 'package:onepiece_list_2/src/pages/home_page.dart';

void main() {
  runApp(const MyApps());
}

class MyApps extends StatelessWidget {
  const MyApps({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Main",
      home: Home(),
    );
  }
}
