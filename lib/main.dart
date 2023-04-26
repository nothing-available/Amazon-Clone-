import 'package:amazon_clone/constants/global_variable.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      title: 'Amazon Clone',
      theme: ThemeData(
        scaffoldBackgroundColor: GlobalVariable.backgroungColor,
        appBarTheme: const AppBarTheme(
          elevation: 0,
          iconTheme: IconThemeData(
            color: Colors.black,
          )
        )
      ),
      home: Scaffold(
        appBar: AppBar(title: const Text('Hello'),),
        body: const Center(
          child: Text('Flutter Demo Home Page'),
        ),
      )
    );
  }
}

