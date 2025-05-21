import 'package:catalist_task_app/consts/consts.dart';
import 'package:catalist_task_app/main_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: customBlue),
          useMaterial3: true,
        ),
        home: const MainPage());
  }
}
