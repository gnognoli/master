import 'package:flutter/material.dart';
import 'package:flutter_online_learning_app/models/league_model_list.dart';
import 'package:flutter_online_learning_app/models/league_model.dart';
import 'package:flutter_online_learning_app/models/matche_model.dart';
import 'package:flutter_online_learning_app/screens/login_screen.dart';
import 'package:flutter_online_learning_app/screens/screens.dart';
import 'package:flutter_online_learning_app/services/league_services.dart';
import 'package:flutter_online_learning_app/services/user_services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'commands/base_command.dart' as Commands;
import 'commands/league_command.dart';
import 'models/app_model.dart';
import 'package:flutter_online_learning_app/models/stage.dart';
import 'package:http/http.dart' as http;
import 'models/matche_model_list.dart';
import 'models/user_model.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //Future<LeagueModelList> leagues = LoadLeagueCommand().run();
    return MultiProvider(
        providers: [
          ChangeNotifierProvider(create: (c) => AppModel()),
          //ChangeNotifierProvider(create: (c) => UserModel()),
          //ChangeNotifierProvider(create: (c) => StageModel()),
          ChangeNotifierProvider(create: (c) => LeagueModel()),
          ChangeNotifierProvider(create: (c) => LeagueModelList()),
          //ChangeNotifierProvider(create: (c) => MatcheModel()),
          Provider(create: (_) => LeagueServices()),
          Provider(create: (_) => UserService()),
        ],
        child: Builder(builder: (context) {
          Commands.init(context);
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'BetSkills',
            theme: ThemeData(
              primaryColor: Color(0xffFFFFFF),
            ),
            home: AppScaffold3(),
          );
        }));
  }
}

// init app
void _initApp() async {
  await LeagueCommand().run();
  //final Uri uri = Uri.parse(
  //    'http://admin:passwor@192.168.11.107:30002/betskills/footballleagues');
  //final response = await http.get(uri);
}

class AppScaffold3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    LeagueModelList currentLeagueList =
        context.select<LeagueModelList, LeagueModelList>((value) => value);
    print("AppScaffold3 LeagueList Length:${currentLeagueList.length}");
    return Scaffold(
      body: currentLeagueList.isEmpty ? LoginScreen() : HomeScreen(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    LeagueModelList currentLeagueList =
        context.select<LeagueModelList, LeagueModelList>((value) => value);
    print("HomePage LeagueList Length:${currentLeagueList.length}");
    return Container(
        child: Padding(
            padding: EdgeInsets.all(16),
            child: Container(
              height: MediaQuery.of(context).size.height * 0.5,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(
                        "assets/images/2-28928_soccer-player-png-transparent-png-cropped.png"),
                    scale: 1),
              ),
            )));
  }
}

class AppScaffold2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //_initApp();

    return FutureBuilder(
      builder: (ctx, snapshot) {
        if (snapshot.connectionState == ConnectionState.done) {
          // If we got an error
          if (snapshot.hasError) {
            return Center(
              child: Text(
                '${snapshot.error} occurred',
                style: TextStyle(fontSize: 18),
              ),
            );
          } else {
            print(
                "LOADED DATA LENGTH: ${context.read<LeagueModelList>().length}");
            // Displaying LoadingSpinner to indicate waiting state
            return Container(
                child: Padding(
                    padding: EdgeInsets.all(16),
                    child: Container(
                      height: MediaQuery.of(context).size.height * 0.5,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(
                                "assets/images/2-28928_soccer-player-png-transparent-png-cropped.png"),
                            scale: 1),
                      ),
                    )));
          }
        }
        return Center(
          child: CircularProgressIndicator(),
        );
      },
      // Future that needs to be resolved
      // inorder to display something on the Canvas
      future: LeagueCommand().run(),
    );

    //return Scaffold(body: HomeScreen());
  }
}

class AppScaffold extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return FutureBuilder(
        future: Future<LeagueModelList>.delayed(
            const Duration(seconds: 5), () => LeagueCommand().run()),
        builder:
            (BuildContext context, AsyncSnapshot<LeagueModelList> snapshot) {
          if (snapshot.hasData) {
            var data = snapshot.data;
            print("LOADED DATA length  IS : ${data!.length}");
            return Provider<LeagueModelList>(
                create: (context) => snapshot.data!, child: const HomeScreen());
          } else if (snapshot.hasError) {
            return Container(
                child: Column(children: [
              const Icon(
                Icons.error_outline,
                color: Colors.red,
                size: 60,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 16),
                child: Text('Error: ${snapshot.error}'),
              ),
            ]));
          } else {
            return Scaffold(
                backgroundColor: Theme.of(context).primaryColor,
                body: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                          padding: EdgeInsets.all(16),
                          child: Container(
                            height: MediaQuery.of(context).size.height * 0.5,
                            width: MediaQuery.of(context).size.width,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage(
                                      "assets/images/2-28928_soccer-player-png-transparent-png-cropped.png"),
                                  scale: 1),
                            ),
                          )),
                      Padding(
                        padding: EdgeInsets.all(16),
                        child: Text(
                          "BS",
                          style: GoogleFonts.roboto(
                              fontSize: 200,
                              fontWeight: FontWeight.w400,
                              color: const Color(0xFF4B68CF)),
                        ),
                      )
                    ]));
          }
        }
        //home: const MatcheDetailScreen(),
        //home: const CalendarScreen(),
        );
  }
}
