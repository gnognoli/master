import 'dart:collection';
import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter_online_learning_app/models/matche_model.dart';

class MatcheModelList extends ListBase<MatcheModel> with ChangeNotifier {
  List innerList = [];
  @override
  int get length => innerList.length;

  @override
  MatcheModel operator [](int index) {
    // TODO: implement []
    return innerList[index];
  }

  @override
  void operator []=(int index, MatcheModel value) {
    innerList[index] = value;
    notifyListeners();
  }

  @override
  void add(MatcheModel element) {
    innerList.add(element);
    notifyListeners();
  }

  @override
  void addAll(Iterable<MatcheModel> iterable) {
    innerList.addAll(iterable);
    notifyListeners();
  }

  @override
  set length(int newLength) {
    innerList.length = newLength;
    notifyListeners();
  }

  static MatcheModelList listBuild(Map<String, dynamic> dynamicMap) {
    MatcheModelList list = MatcheModelList();

    for (var i = 0; i < dynamicMap["response"].length; i++) {
      //print("I is ==${i}");
      //print("MatchModel is :${dynamicMap["response"][i]}");
      list.add(MatcheModel.fromdynamicMap(dynamicMap['response'][i]));
    }
    print("First Model is: ${list[0]}");
    return list;
  }
}
