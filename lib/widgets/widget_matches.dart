import 'package:flutter/material.dart';
import 'package:flutter_online_learning_app/models/matche_model_list.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class WidgetMatches extends StatelessWidget {
  const WidgetMatches({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //final matcheModelList = Provider.of<MatcheModelList>(context);
    return Consumer<MatcheModelList>(
        builder: (_, matcheModelList, __) => ListView.builder(
            physics: const BouncingScrollPhysics(),
            itemCount: matcheModelList.length,
            shrinkWrap: true,
            itemBuilder: (context, index) => Padding(
                  padding: EdgeInsets.only(bottom: 24),
                  child: Container(
                      height: 137,
                      width: 353,
                      decoration: BoxDecoration(
                          color: Color(0xFFF8F8FB),
                          borderRadius: BorderRadius.all(Radius.circular(25))),
                      child: Row(children: [
                        Expanded(
                            flex: 5,
                            child: Padding(
                              padding: EdgeInsets.only(left: 1),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(bottom: 5),
                                    child: Text(
                                        matcheModelList[index].data?['league']
                                            ['round'],
                                        style: GoogleFonts.roboto(
                                            fontSize: 18,
                                            color: Color.fromARGB(255, 0, 0, 0),
                                            fontWeight: FontWeight.w800)),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(bottom: 5),
                                    child: Text(
                                        "${(matcheModelList[index].data?['teams']['home']['name'])} vs ${matcheModelList[index].data?['teams']['away']['name']}",
                                        style: GoogleFonts.roboto(
                                            fontSize: 12,
                                            color: Color(0xff9C9A9A),
                                            fontWeight: FontWeight.w400)),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(),
                                    child: Text(
                                        " ${matcheModelList[index].data?['score']['fulltime']['home']}   -   ${matcheModelList[index].data?['score']['fulltime']['away']}",
                                        style: GoogleFonts.roboto(
                                            fontSize: 15,
                                            color: Color.fromARGB(255, 0, 0, 0),
                                            fontWeight: FontWeight.w400)),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(),
                                    child: Text("Today, 10PM",
                                        style: GoogleFonts.roboto(
                                            fontSize: 15,
                                            color: Color.fromARGB(255, 0, 0, 0),
                                            fontWeight: FontWeight.w400)),
                                  ),
                                ],
                              ),
                            )),
                        Expanded(
                            flex: 3,
                            child: Column(
                              //mainAxisAlignment: MainAxisAlignment.spaceAround,
                              //crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: [
                                Expanded(
                                    child: Container(
                                        //width: MediaQuery.of(context).size.width,
                                        //width: 353 / 2,

                                        decoration: const BoxDecoration(
                                            border: Border(
                                                left: BorderSide(
                                                    color: Color(0xFFDEDEDE),
                                                    style: BorderStyle.solid))),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Text(
                                              "2.40",
                                              style: GoogleFonts.roboto(
                                                  fontSize: 14,
                                                  color:
                                                      const Color(0xff9C9A9A),
                                                  fontWeight: FontWeight.bold),
                                            ),
                                            SizedBox(
                                              width: 10,
                                            ),
                                            Container(
                                              width: 33,
                                              height: 33,
                                              decoration: BoxDecoration(
                                                  image: DecorationImage(
                                                      image: NetworkImage(
                                                          matcheModelList[index]
                                                                          .data?[
                                                                      'teams']
                                                                  ['home']
                                                              ['logo']))),
                                            )
                                          ],
                                        ))),
                                Expanded(
                                    child: Container(
                                        //width: MediaQuery.of(context).size.width,
                                        //width: 353 / 2,

                                        decoration: const BoxDecoration(
                                            border: Border(
                                                top: BorderSide(
                                                    color: Color(0xFFDEDEDE),
                                                    style: BorderStyle.solid),
                                                left: BorderSide(
                                                    color: Color(0xFFDEDEDE),
                                                    style: BorderStyle.solid))),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Text(
                                              "2.40",
                                              style: GoogleFonts.roboto(
                                                  fontSize: 14,
                                                  color:
                                                      const Color(0xff9C9A9A),
                                                  fontWeight: FontWeight.bold),
                                            ),
                                            SizedBox(
                                              width: 10,
                                            ),
                                            Container(
                                              width: 33,
                                              height: 33,
                                              decoration: BoxDecoration(
                                                  image: DecorationImage(
                                                      image: NetworkImage(
                                                          matcheModelList[index]
                                                                          .data?[
                                                                      'teams']
                                                                  ['away']
                                                              ['logo']))),
                                            )
                                          ],
                                        )))
                              ],
                            ))
                      ])),
                )));
  }
}
