import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:flutter_online_learning_app/models/stage.dart';

class WidgetProfileBalance extends StatelessWidget {
  final StageModel stage;
  const WidgetProfileBalance({Key? key, required this.stage}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 0),
      child: Container(
        height: 12,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(0), color: Colors.white),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: EdgeInsets.only(left: 0),
              child: Row(children: [
                Padding(
                  padding: EdgeInsets.only(left: 23),
                  child: Row(children: [
                    InkWell(
                        onTap: () {
                          stage.increment();
                        },
                        child: Container(
                          height: 30,
                          width: 80,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            border: Border.all(color: Color(0xffD9D9D9)),
                          ),
                          child: Row(
                            children: [
                              Padding(
                                padding: EdgeInsets.all(3),
                                child: Container(
                                    height: 30,
                                    width: 30,
                                    decoration: const BoxDecoration(
                                        image: DecorationImage(
                                            image: AssetImage(
                                                "assets/images/football_coin_small.png"),
                                            scale: 1))),
                              ),
                              Padding(
                                  padding: EdgeInsets.only(left: 0),
                                  child: Text(
                                    "${stage.currentCount}",
                                    style: GoogleFonts.roboto(
                                        fontWeight: FontWeight.w800,
                                        color: Color.fromARGB(255, 1, 1, 1),
                                        fontSize: 18),
                                  )),
                            ],
                          ),
                        )),
                  ]),
                )
              ]),
            ),
          ],
        ),
      ),
    );
  }
}
