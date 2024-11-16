import 'package:flutter_online_learning_app/commands/base_command.dart';

import '../models/league_model_list.dart';
import 'league_command.dart';

class LoginCommand extends BaseCommand {
  Future<bool> run(String user, String pass) async {
    print("RUNTIME TYPE :" + userService.runtimeType.toString());

    // Await some service call
    bool loginSuccess = await userService.login(user, pass);
    // Run a 2nd command if service call was successful
    if (loginSuccess) {
      print("LOGIN SI OK running LeagueCommand().run()x");
      //await RefreshPostsCommand().run(user);
      await LeagueCommand().run();
    }
    // Update appModel with current user. Any views bound to this will rebuild
    appModel.currentUser = (loginSuccess ? user : null)!;

    // Return the result to whoever called us, in case they care
    return loginSuccess;
  }
}
