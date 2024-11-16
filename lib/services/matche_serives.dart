import 'dart:convert';
import 'package:http/http.dart' as http;

class MatcheServices {
  /// Fetche matches by leagueId
  Future<Map<String, dynamic>> fetchMatchesByLeeagueId(int leagueId) async {
    final Uri uri = Uri.parse(
        'http://admin:password@192.168.11.112:30002/betskills/fixtures-wc-sample2');
    final response = await http.get(uri);
    if (response.statusCode == 200) {
      // If the server did return a 200 OK response,
      // then parse the JSON.
      Map<String, dynamic> dynamicMap = json.decode(response.body);
      print(" Downloaded fixtures : ${dynamicMap}");
      return dynamicMap;
    } else {
      // If the server did not return a 200 OK response,
      // then throw an exception.
      throw Exception('Failed to load Leagues');
    }
  }
}
