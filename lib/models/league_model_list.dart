import 'dart:collection';

import 'package:flutter/cupertino.dart';
import 'package:flutter_online_learning_app/models/league_model.dart';

class LeagueModelList extends ListBase<LeagueModel> with ChangeNotifier {
  List innerList = [];
  @override
  int get length => innerList.length;

  @override
  LeagueModel operator [](int index) {
    // TODO: implement []
    return innerList[index];
  }

  @override
  void operator []=(int index, LeagueModel value) {
    innerList[index] = value;
    notifyListeners();
  }

  @override
  void add(LeagueModel element) {
    innerList.add(element);
    notifyListeners();
  }

  @override
  void addAll(Iterable<LeagueModel> iterable) {
    innerList.addAll(iterable);
    notifyListeners();
  }

  @override
  set length(int newLength) {
    innerList.length = newLength;
    notifyListeners();
  }
}
