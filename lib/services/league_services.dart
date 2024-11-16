import 'package:http/http.dart' as http;
import 'dart:convert';

class LeagueServices {
  //LeagueServices(BuildContext context)
  /// send http request to load leagues from api
  Future<Map<String, dynamic>> fetchLeagues() async {
    print("AFTER PARSING URI");
    final Uri uri = Uri.parse('http://192.168.11.111:4567/leagues4');
    print("BEFORE HTTP QUERY");

    final response = await http.get(uri);
    print("AFTER HTTP QUERY");
    if (response.statusCode == 200) {
      // If the server did return a 200 OK response,
      // then parse the JSON.
      Map<String, dynamic> dynamicMap = json.decode(response.body);
      //@@print(" downloaded data : ${dynamicMap}");
      print(" downloaded data length from : ${dynamicMap.length}");
      return dynamicMap;
    } else {
      // If the server did not return a 200 OK response,
      // then throw an exception.
      throw Exception('Failed to load Leagues');
    }
  }
}
