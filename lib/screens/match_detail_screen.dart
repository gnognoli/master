import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_online_learning_app/widgets/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class MatcheDetailScreen extends StatelessWidget {
  const MatcheDetailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Theme.of(context).primaryColor,
        body: CustomScrollView(slivers: [
          SliverAppBar(
              backgroundColor: Color.fromARGB(255, 255, 255, 255),
              title: Padding(
                  padding: const EdgeInsets.only(left: 0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                          padding: EdgeInsets.only(left: 24),
                          child: Container(
                            width: 45,
                            height: 45,
                            decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(30)),
                                color: Color(0xFF4B68CF),
                                image: DecorationImage(
                                    image: AssetImage(
                                        "assets/images/UEFA-Champions-League-Logo-PNG-White-small.png"))),
                          )),
                      SizedBox(
                        width: 14,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "UEFA",
                            style: GoogleFonts.roboto(
                                fontSize: 18,
                                color: Color.fromARGB(255, 5, 5, 5),
                                fontWeight: FontWeight.w800),
                          ),
                          Text(
                            "Champions League",
                            style: GoogleFonts.roboto(
                                fontSize: 18,
                                color: Color.fromARGB(255, 5, 5, 5),
                                fontWeight: FontWeight.w800),
                          ),
                        ],
                      )
                    ],
                  )),
              centerTitle: false,
              floating: true,
              snap: false,
              pinned: true,
              titleSpacing: 0,
              actions: []),
          const SliverPadding(
            padding: EdgeInsets.only(
              top: 7,
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
                      'Paris St Germain Vs FC Barcelone',
                      style: GoogleFonts.roboto(
                          fontSize: 14,
                          color: Color(0xFF848282),
                          fontWeight: FontWeight.w400),
                    ),
                    Text(
                      '1/2 final',
                      style: GoogleFonts.roboto(
                          fontSize: 14,
                          color: Color(0xFF848282),
                          fontWeight: FontWeight.w400),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 35,
              ),
              Padding(
                  padding: EdgeInsets.only(left: 20, right: 20),
                  child: WidgetMatchVsBox()),
              SizedBox(
                height: 22,
              ),
              Padding(
                  padding: EdgeInsets.only(left: 20, right: 20),
                  child: WidgetMatcheTeamRanking()),
              SizedBox(
                height: 22,
              ),
              Padding(
                  padding: EdgeInsets.only(left: 22),
                  child: Text(
                    "Placez vos pronostiques",
                    style: GoogleFonts.roboto(
                        color: Color(0xFF848282),
                        fontWeight: FontWeight.w300,
                        fontSize: 22),
                  )),
              SizedBox(
                height: 16,
              ),
              Padding(
                padding: EdgeInsets.only(left: 20, right: 20),
                //child: WidgetMatchBetWinner(),
                child: WidgetMatchBetWinner(),
              ),
              SizedBox(
                height: 14,
              ),
              WidgetMatchBetTeamGoal(),
              SizedBox(
                height: 14,
              ),
              WidgetMatchBetGoal(),
              SizedBox(
                height: 14,
              ),
              WidgetMatchBetCardCount()
            ]),
          ),
        ]));
  }
}
