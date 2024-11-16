import 'package:flutter/material.dart';
import 'package:flutter_online_learning_app/models/league_model.dart';
import 'package:flutter_online_learning_app/models/matche_model.dart';
import 'package:flutter_online_learning_app/services/league_services.dart';
import 'package:provider/provider.dart';
import '../models/app_model.dart';
import '../models/league_model_list.dart';
import '../models/matche_model_list.dart';
import '../services/user_services.dart';

BuildContext? _mainContext;
// The commands will use this to access the Provided models and services.
void init(BuildContext c) => _mainContext = c;

// Provide quick lookup methods for all the top-level models and services. Keeps the Command code slightly cleaner.
class BaseCommand {
  // Models

  AppModel appModel = _mainContext!.read<AppModel>();

  LeagueModel leagueModel = _mainContext!.read<LeagueModel>();
  LeagueModelList leagueModelList = _mainContext!.read<LeagueModelList>();
  UserService userService = _mainContext!.read<UserService>();

  //MatcheModel matcheModel = _mainContext!.read<MatcheModel>();
  //MatcheModelList matcheModelList = _mainContext!.read<MatcheModelList>();
  // Services
  LeagueServices leagueServices = _mainContext!.read<LeagueServices>();
}
