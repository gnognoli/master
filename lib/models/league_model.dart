import 'dart:convert';
import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter_online_learning_app/models/league_model_list.dart';
import 'package:provider/provider.dart';
import 'package:http/http.dart' as http;

class LeagueModel with ChangeNotifier {
  /// country id
  int? id;

  /// country name
  String? name;

  /// country second name
  String? type;

  /// country code
  String? logo;

  /// HIDDEN_STAGE = “Chi”;
  int? Chi;

  LeagueModel();
  //LeagueModel(this.Cid,this.Cnm,this.Csnm,this.Ccd,this.Chi,this.CompId,this.CompN,this.CompD,this.stages);
  LeagueModel.fromdynamicMap(Map<String, dynamic> dynamicMap)
      : id = dynamicMap["id"],
        this.name = dynamicMap["name"],
        this.type = dynamicMap["type"],
        this.logo = dynamicMap["logo"];

  static LeagueModelList listBuild(Map<String, dynamic> dynamicMap) {
    LeagueModelList list = LeagueModelList();

    for (var i = 0; i < dynamicMap["paging"]["response"].length; i++) {
      //print("I is ==${i}");
      //print("LeagueModel is :${dynamicMap["Ccg"][i]}");s
      list.add(LeagueModel.fromdynamicMap(
          dynamicMap["paging"]["response"][i]["league"]));
      //print(LeagueModel.fromdynamicMap(dynamicMap["Ccg"][i]));
    }

    return list;
  }

  @override
  String toString() {
    // TODO: implement toString
    return "{${id} ${name} ${type} ${logo}";
  }
}
