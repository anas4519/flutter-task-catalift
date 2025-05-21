import 'package:catalist_task_app/consts/consts.dart';
import 'package:catalist_task_app/main_page.dart';
import 'package:catalist_task_app/providers/search_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
      ChangeNotifierProvider(create: (_) => SearchProvider(), child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: customBlue),
          useMaterial3: true,
        ),
        home: const MainPage());
  }
}
