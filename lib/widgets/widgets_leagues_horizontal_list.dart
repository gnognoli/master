import 'package:flutter/material.dart';
import 'package:flutter_online_learning_app/commands/matche_command.dart';
import 'package:flutter_online_learning_app/models/league_model_list.dart';
import 'package:provider/provider.dart';

class WidgetLeaguesHorizontalMenu extends StatefulWidget {
  const WidgetLeaguesHorizontalMenu({
    Key? key,
  }) : super(key: key);

  @override
  _WidgetLeaguesHorizontalMenuState createState() =>
      _WidgetLeaguesHorizontalMenuState();
}

class _WidgetLeaguesHorizontalMenuState
    extends State<WidgetLeaguesHorizontalMenu> {
  int selectedIndex = -1;
  bool isSelected = false;
  @override
  Widget build(BuildContext context) {
    final leaguesModelList = Provider.of<LeagueModelList>(context);
    return ListView.builder(
        itemCount: leaguesModelList!.length - 900,
        scrollDirection: Axis.horizontal,
        physics: BouncingScrollPhysics(),
        itemBuilder: (BuildContext context, int index) => GestureDetector(
            onTap: () {
              setState(() {
                print(
                    "ID: ${leaguesModelList[index].id} ${leaguesModelList[index].name}");

                MatcheCommand().runGetMatches(leaguesModelList[index].id!);
                selectedIndex = index;
              });
            },
            child: Padding(
              padding: EdgeInsets.only(right: 15),
              child: Container(
                width: 75,
                height: 75,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    border: selectedIndex == index
                        ? Border.all(color: Color(0xFF627FE5))
                        : Border.all(color: Color(0xffF8F8FB)),
                    color: selectedIndex == index
                        ? Color.fromARGB(255, 231, 228, 228)
                        : Color(0xffF8F8FB)),
                child: Stack(
                  children: [
                    Positioned(
                        left: 12,
                        top: 15,
                        child: Container(
                            width: 50,
                            height: 45,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                              image: NetworkImage(
                                  '${leaguesModelList![index].logo}'),
                            ))))
                  ],
                ),
              ),
            )));
  }
}
