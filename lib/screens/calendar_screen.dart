import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:flutter_online_learning_app/widgets/widgets.dart';

class CalendarScreen extends StatelessWidget {
  const CalendarScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 255, 255, 255),
        body: CustomScrollView(slivers: [
          SliverAppBar(
              backgroundColor: Color.fromARGB(255, 255, 255, 255),
              title: Padding(
                padding: const EdgeInsets.only(left: 24),
                child: Text(
                  "Calendar",
                  style: GoogleFonts.roboto(
                      fontSize: 30,
                      color: Color.fromARGB(255, 255, 255, 255),
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
                    child: Center(
                        child: Text("6 Jully 2022",
                            style: GoogleFonts.roboto(
                                fontSize: 16,
                                color: Color.fromARGB(255, 255, 255, 255),
                                fontWeight: FontWeight.bold)))),
              ],
              shadowColor: Colors.transparent,
              expandedHeight: 210,
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(16),
                  bottomRight: Radius.circular(16),
                ),
              ),
              flexibleSpace: FlexibleSpaceBar(
                  background: Container(
                      decoration: BoxDecoration(
                          color: Color(0xffF4B68CF),
                          borderRadius:
                              BorderRadius.only(topLeft: Radius.circular(0))),
                      child: Column(children: [
                        Expanded(
                          child: ListView(
                            padding: const EdgeInsets.symmetric(horizontal: 20),
                            physics: const BouncingScrollPhysics(),
                            children: [

                              const SizedBox(
                                height: 120,
                              ),
                              SizedBox(
                                height: 102,
                                width: 435,
                                child: ListView.builder(
                                  scrollDirection: Axis.horizontal,
                                  physics: BouncingScrollPhysics(),
                                  itemBuilder:
                                      (BuildContext context, int index) =>
                                          WidgetCalendarHorizontalDatePicker(),
                                ),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              //WidgetPartnerGiftAdd(),
                            ],
                          ),
                        )
                      ])))),
          const SliverPadding(
            padding: EdgeInsets.only(
              top: 15,
            ),
          ),
          SliverList(
              delegate: SliverChildListDelegate([
            Container(
              decoration: BoxDecoration(
                  //color: Colors.yellow,
                  ),
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
                      height: 15,
                    ),
                    ListView.builder(
                      physics: const BouncingScrollPhysics(),
                      itemCount: 10,
                      shrinkWrap: true,
                      itemBuilder: (context, index) => const WidgetMatches(),
                    ),
                  ]),
            )
          ]))
        ]));
  }
}
