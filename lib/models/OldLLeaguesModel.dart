import 'dart:convert';
import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';
import 'package:http/http.dart' as http;

class LeagueModel with ChangeNotifier {

  /*
  String Cid;
  String Cnm;
  String Csnm;
  String Ccd;
  int Chi;
  String CompId;
  String CompN;
  String CompD;
*/

  //LeagueModel(this.Cid,this.Cnm,this.Csnm, this.Ccd, this.Chi, this.CompId,this.CompN, this.CompD);

  LeagueModel() {

  }

  factory LeagueModel.fromJson(String jsonnstrinng){
    return LeagueModel();
  }

  static void loadLeagues() {
    LeagueModel.fetchLeagues();
  }

  // load worldwide leagues
  static Future<LeagueModel> fetchLeagues() async {
    final Uri uri = Uri.parse(
        'http://admin:password@192.168.11.116:30002/betskills/leagues');
    final response = await http.get(uri,
      // Send authorization headers to the backend.

    );

    if (response.statusCode == 200) {
      // If the server did return a 200 OK response,
      // then parse the JSON.
      var parsedList = json.decode(response.body);
      print(" downloaded data : ${parsedList["_rev"]}");
      //return LeagueModel.fromJson(jsonDecode(response.body));
      return LeagueModel();
    } else {
      // If the server did not return a 200 OK response,
      // then throw an exception.
      throw Exception('Failed to load Leagues');
    }
  }

  static void listBuild(Future<Map<String, dynamic>> leagues) {}
}


