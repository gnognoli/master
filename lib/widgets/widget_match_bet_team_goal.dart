import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';

class WidgetMatchBetTeamGoal extends StatelessWidget {
  const WidgetMatchBetTeamGoal({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 24, right: 24),
      child: Container(
        height: 98,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(20)),
            color: Color(0xFFF8F8FB)),
        child: Column(
          children: [
            Padding(
                padding: EdgeInsets.only(bottom: 5, top: 5),
                child: Text(
                  "Les deux équipes vont marquer?",
                  style: GoogleFonts.roboto(
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF848282)),
                )),
            Padding(
              padding: EdgeInsets.only(left: 14, right: 14),
              child: Container(
                height: 53,
                decoration: BoxDecoration(
                  color: Color(0xFFF8F8FB),
                  borderRadius: BorderRadius.all(
                    Radius.circular(33),
                  ),
                ),
                child: Row(children: [
                  Expanded(
                    child: Container(
                      height: 53,
                      decoration: const BoxDecoration(
                          color: Color(0xFF848282),
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(33),
                            bottomLeft: Radius.circular(33),
                          )),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("NON",
                                style: GoogleFonts.roboto(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w400,
                                    color: Colors.white)),
                            SizedBox(
                              width: 2,
                            ),
                            Text("X 1.73",
                                style: GoogleFonts.roboto(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400,
                                    color: Colors.white)),
                          ]),
                    ),
                  ),
                  SizedBox(
                    width: 1.5,
                  ),
                  Expanded(
                    child: Container(
                      height: 53,
                      decoration: const BoxDecoration(
                        color: Color(0xFF4B68CF),
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(33),
                          bottomRight: Radius.circular(33),
                        ),
                      ),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("4.03 X",
                                style: GoogleFonts.roboto(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400,
                                    color: Colors.white)),
                            SizedBox(
                              width: 2,
                            ),
                            Text("OUI",
                                style: GoogleFonts.roboto(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w400,
                                    color: Colors.white)),
                          ]),
                    ),
                  ),
                ]),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
