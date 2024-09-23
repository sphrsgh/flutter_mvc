import 'package:flutter/material.dart';
import 'package:flutter_mvc/models/counter_model.dart';
import 'package:get/get.dart';

class CounterView extends StatelessWidget {
  final CounterModel
      model; // add model in view (model data will be get from controller in main.dart)
  const CounterView({super.key, required this.model});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('Flutter MVC Counter'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            GetX<CounterModel>(
              init: model,
              builder: (model) => Text(
                '${model.count}', // get count from model
                style: Theme.of(context).textTheme.headlineMedium,
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: model.increment, // call increment from model
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
