import 'package:flutter/cupertino.dart';
import 'package:flutter_online_learning_app/models/league_model.dart';
import 'package:flutter_online_learning_app/models/league_model_list.dart';

/// Model used to hold application state
///
/// ...
class AppModel extends ChangeNotifier {
  /// List of LeagueModel. it is initalized when app is loaded.
  /// current user
  String _currentUser = "";
  String get currentUser => _currentUser;
  set currentUser(String user) => _currentUser = user;

  /// Hold the only reference of leagues for the entire app components
  LeagueModelList _currentLeagueModelList = LeagueModelList();
  LeagueModelList get currentLeagueModelList => _currentLeagueModelList;
  set leagueModelList(LeagueModelList lml) => _currentLeagueModelList = lml;

  /// Hold the reference of the selected League in the app
  LeagueModel _currentLeague = LeagueModel();
  LeagueModel get currentLeague => _currentLeague;
  set currentLeagueModel(LeagueModelList lm) => _currentLeagueModelList = lm;
}
