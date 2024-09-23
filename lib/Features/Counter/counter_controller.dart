import 'package:flutter_mvc/Features/Counter/counter_model.dart';

class CounterController {
  // کنترلر به منظور تبادل دیتا بین ویو و مدل است

  late final CounterModel _model; //

  // CounterController(this._model); // constructor

  CounterController() {
    // constructor (this way is better)
    _model = CounterModel();
  }

  CounterModel get model => _model; // getter
}
