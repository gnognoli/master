import 'dart:io';

import 'package:flutter/material.dart';

import 'package:flutter_online_learning_app/models/matche_model_list.dart';
import 'package:flutter_online_learning_app/models/stage.dart';
import 'package:flutter_online_learning_app/widgets/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import '../commands/matche_command.dart';
import '../models/app_model.dart';
import '../models/league_model_list.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({
    Key? key,
  }) : super(key: key);

  @override
  createState() => _HomePageState();
}

class _HomePageState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    //final leagues = ChangeNotifierProvider.of<LeagueModelList>(context);
    //final leagues = ChangeNotifierProvider(create: (_) => LeagueModelList());
    //LeagueModelList leagues = Provider.of<LeagueModelList>(context);
    var leagues =
        context.select<LeagueModelList, LeagueModelList>((value) => value);
    print("length from home selectedList: ${leagues.length.toString()}");
    //final League =
    return Scaffold(
        backgroundColor: Theme.of(context).primaryColor,
        body: CustomScrollView(
          slivers: [
            SliverAppBar(
              backgroundColor: Colors.white,
              title: Padding(
                padding: const EdgeInsets.only(left: 24),
                child: Text(
                  "BetSkills",
                  style: GoogleFonts.roboto(
                      fontSize: 30,
                      color: Color.fromARGB(255, 2, 2, 2),
                      fontWeight: FontWeight.bold),
                ),
              ),
              centerTitle: false,
              floating: true,
              snap: false,
              pinned: true,
              titleSpacing: 0,
              actions: [
                Padding(
                    padding: const EdgeInsets.only(right: 24),
                    child: Consumer<StageModel>(
                        builder: (_, value, __) =>
                            WidgetProfileBalance(stage: value))),
              ],
              shadowColor: Colors.transparent,
              expandedHeight: 380,
              //backgroundColor: Color(0xFF4B68CF),
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(16),
                  bottomRight: Radius.circular(16),
                ),
              ),
              flexibleSpace: FlexibleSpaceBar(
                  background: Column(children: [
                Expanded(
                  child: ListView(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    physics: const BouncingScrollPhysics(),
                    children: [
                      const SizedBox(
                        height: 20,
                      ),
                      const SizedBox(
                        height: 100,
                      ),
                      Text(
                        "Leagues",
                        style: GoogleFonts.roboto(
                            fontSize: 15,
                            color: Color.fromARGB(255, 8, 8, 8),
                            fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(
                        height: 22,
                      ),
                      SizedBox(
                          height: 76,
                          width: 435,
                          child: WidgetLeaguesHorizontalMenu()),
                      SizedBox(
                        height: 20,
                      ),
                      WidgetPartnerGiftAdd(),
                    ],
                  ),
                )
              ])),
            ),
            const SliverPadding(
              padding: EdgeInsets.only(
                top: 1,
              ),
            ),
            SliverList(
                delegate: SliverChildListDelegate([
              Container(
                  margin: const EdgeInsets.symmetric(
                    horizontal: 24,
                  ),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          "UEFA Championship",
                          //textAlign: TextAlign.center,
                          style: GoogleFonts.roboto(
                            fontSize: 15,
                            color: Color.fromARGB(255, 8, 8, 8),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          height: 0,
                        ),
                        /*FutureBuilder(
                            future: Future<MatcheModelList>.delayed(
                                const Duration(seconds: 5),
                                () => MatcheCommand().runGetMatches(1)),
                            builder: (BuildContext context,
                                AsyncSnapshot<MatcheModelList> snapshot) {
                              if (snapshot.hasData) {
                                var data = snapshot.data;
                                print(
                                    "LOADED DATA length  IS : ${data!.length}");
                                return Provider<MatcheModelList>(
                                  create: (context) => snapshot.data!,
                                  child: const WidgetMatches(),
                                );
                              } else if (snapshot.hasError) {
                                return Container();
                              } else {
                                return Container();
                              }
                            })*/
                      ]))
            ]))
          ],
        ));
  }
}
