import 'package:flutter/material.dart';
import 'package:flutter_online_learning_app/commands/base_command.dart';
import 'package:flutter_online_learning_app/services/league_services.dart';
import 'package:flutter_online_learning_app/models/league_model.dart';
import '../models/league_model_list.dart';

class LeagueCommand extends BaseCommand {
  Future<LeagueModelList> run() async {
    // Load leagues from leagueService
    print('INSIDE LEAGUEMODEL LIST');
    Map<String, dynamic> leagues = await LeagueServices().fetchLeagues();
    LeagueModelList iterable = LeagueModel.listBuild(leagues);
    leagueModelList.addAll(iterable);

    return iterable;
  }
}
