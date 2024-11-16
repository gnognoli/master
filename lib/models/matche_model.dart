import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MatcheModel with ChangeNotifier {
  int? id;
  String? logo;
  Map<String, dynamic>? data;

  MatcheModel();

  MatcheModel.fromdynamicMap(Map<String, dynamic> dynamicMap)
      : id = dynamicMap["fixture"]["id"],
        data = dynamicMap,
        logo = dynamicMap['teams']['away']['logo'];
  String tosString() {
    return "id: ${id}, data: ${data}";
  }
}
