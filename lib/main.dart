import 'package:flutter/material.dart';
import 'package:flutter_mvc/Features/Counter/counter_controller.dart';
import 'package:flutter_mvc/Features/Counter/counter_view.dart';
import 'package:get/get.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  final counterController = CounterController(); // add controller here to call one time

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter MVC Counter',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.blue,
          brightness: Brightness.light,
        ),
        useMaterial3: true,
      ),
      darkTheme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.blue,
          brightness: Brightness.dark,
        ),
        useMaterial3: true,
      ),
      home: CounterView(model: counterController.model,),
    );
  }
}
