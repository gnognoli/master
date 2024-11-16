import 'package:flutter_online_learning_app/commands/base_command.dart';

import '../models/matche_model_list.dart';
import '../services/matche_serives.dart';

class MatcheCommand extends BaseCommand {
  Future<MatcheModelList> runGetMatches(int leagueId) async {
    // Load leagues from leagueService

    Map<String, dynamic> iterable =
        await MatcheServices().fetchMatchesByLeeagueId(leagueId);
    MatcheModelList matcheModelList = MatcheModelList.listBuild(iterable);
    print("MATCH MODEL LIST :${matcheModelList.length}");
    return matcheModelList;
  }
}
