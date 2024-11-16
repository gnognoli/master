import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;

class StageModel with ChangeNotifier {

  int _counter = 0;

  StageModel();

  void increment(){
    _counter++;
    notifyListeners();
  }

  void decrement(){
    _counter--;
    notifyListeners();
  }

  int get currentCount => _counter;
    addBalance(int val) => _counter= _counter+val;


}
