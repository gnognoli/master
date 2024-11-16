import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class WidgetMatcheTeamRanking extends StatelessWidget {
  const WidgetMatcheTeamRanking({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 163,
        width: 350,
        decoration: const BoxDecoration(
            color: Color(0xFFF8F8FB),
            borderRadius: BorderRadius.all(Radius.circular(20))),
        child: Padding(
          padding: EdgeInsets.only(top: 11),
          child: Column(children: [
            Expanded(
              flex: 1,
              child: Text(
                "Classement avant cette rencontre >",
                style: GoogleFonts.roboto(
                    color: Color(0xFF4B68CF),
                    fontSize: 14,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Expanded(
                flex: 3,
                child: Padding(
                    padding: const EdgeInsets.only(left: 0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("1"),
                        Container(
                            width: 20,
                            height: 20,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage(
                                        "assets/images/NicePng_psg-logo-png_3429208_small.png")))),
                        SizedBox(
                          width: 8,
                        ),
                        Container(
                          width: 220, // 120 for galaxy fold
                          height: 25,
                          decoration: BoxDecoration(
                              color: Color(0xFF848282),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(15))),
                          child: Row(
                            children: [
                              Expanded(
                                  flex: 1,
                                  child: Container(
                                    width: 25,
                                    height: 44,
                                    decoration: BoxDecoration(
                                        color: Color(0xFF3CDD73),
                                        borderRadius: BorderRadius.only(
                                            bottomLeft: Radius.circular(15),
                                            topLeft: Radius.circular(15))),
                                    child: Center(
                                        child: Text("W",
                                            style: GoogleFonts.roboto(
                                                color: Colors.white,
                                                fontSize: 12,
                                                fontWeight: FontWeight.bold))),
                                  )),
                              Expanded(
                                  flex: 1,
                                  child: Container(
                                    width: 25,
                                    height: 44,
                                    decoration:
                                        BoxDecoration(color: Color(0xFF848282)),
                                    child: Center(
                                        child: Text("D",
                                            style: GoogleFonts.roboto(
                                                color: Colors.white,
                                                fontSize: 12,
                                                fontWeight: FontWeight.bold))),
                                  )),
                              Expanded(
                                  flex: 1,
                                  child: Container(
                                    width: 25,
                                    height: 44,
                                    decoration:
                                        BoxDecoration(color: Color(0xFFE33E3E)),
                                    child: Center(
                                        child: Text("L",
                                            style: GoogleFonts.roboto(
                                                color: Colors.white,
                                                fontSize: 12,
                                                fontWeight: FontWeight.bold))),
                                  )),
                              Expanded(
                                  flex: 1,
                                  child: Container(
                                    width: 25,
                                    height: 44,
                                    decoration:
                                        BoxDecoration(color: Color(0xFF3CDD73)),
                                    child: Center(
                                        child: Text(
                                      "W",
                                      style: GoogleFonts.roboto(
                                          color: Colors.white,
                                          fontSize: 12,
                                          fontWeight: FontWeight.bold),
                                    )),
                                  )),
                              Expanded(
                                  flex: 1,
                                  child: Container(
                                    width: 25,
                                    height: 44,
                                    decoration: BoxDecoration(
                                        color: Color(0xFF3CDD73),
                                        borderRadius: BorderRadius.only(
                                            bottomRight: Radius.circular(15),
                                            topRight: Radius.circular(15))),
                                    child: Center(
                                        child: Text("W",
                                            style: GoogleFonts.roboto(
                                                color: Colors.white,
                                                fontSize: 12,
                                                fontWeight: FontWeight.bold))),
                                  )),
                            ],
                          ),
                        ),
                        SizedBox(width: 10),
                        Container(
                          height: 27,
                          width: 27,
                          decoration: BoxDecoration(
                              color: Color(0xFFACD359),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(5))),
                          child: Center(
                              child: Text(
                            "7.01",
                            style: GoogleFonts.roboto(
                                fontSize: 10,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          )),
                        ),
                        Container(
                          height: 27,
                          width: 27,
                          child: Center(
                              child: Text(
                            "28",
                            style: GoogleFonts.roboto(
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                                color: Color(0xFF848282)),
                          )),
                        )
                      ],
                    ))),
            Expanded(
                flex: 3,
                child: Padding(
                    padding: const EdgeInsets.only(left: 0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("1"),
                        Container(
                            width: 20,
                            height: 20,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage(
                                        "assets/images/barca-icon.png")))),
                        SizedBox(
                          width: 8,
                        ),
                        Container(
                          width: 220, // 120 for galaxy fold
                          height: 25,
                          decoration: BoxDecoration(
                              color: Color(0xFF848282),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(15))),
                          child: Row(
                            children: [
                              Expanded(
                                  flex: 1,
                                  child: Container(
                                    width: 25,
                                    height: 44,
                                    decoration: BoxDecoration(
                                        color: Color(0x848282),
                                        borderRadius: BorderRadius.only(
                                            bottomLeft: Radius.circular(15),
                                            topLeft: Radius.circular(15))),
                                    child: Center(
                                        child: Text("W",
                                            style: GoogleFonts.roboto(
                                                color: Colors.white,
                                                fontSize: 12,
                                                fontWeight: FontWeight.bold))),
                                  )),
                              Expanded(
                                  flex: 1,
                                  child: Container(
                                    width: 25,
                                    height: 44,
                                    decoration:
                                        BoxDecoration(color: Color(0xFF848282)),
                                    child: Center(
                                        child: Text("D",
                                            style: GoogleFonts.roboto(
                                                color: Colors.white,
                                                fontSize: 12,
                                                fontWeight: FontWeight.bold))),
                                  )),
                              Expanded(
                                  flex: 1,
                                  child: Container(
                                    width: 25,
                                    height: 44,
                                    decoration:
                                        BoxDecoration(color: Color(0xFFE33E3E)),
                                    child: Center(
                                        child: Text("L",
                                            style: GoogleFonts.roboto(
                                                color: Colors.white,
                                                fontSize: 12,
                                                fontWeight: FontWeight.bold))),
                                  )),
                              Expanded(
                                  flex: 1,
                                  child: Container(
                                    width: 25,
                                    height: 44,
                                    decoration:
                                        BoxDecoration(color: Color(0xFF3CDD73)),
                                    child: Center(
                                        child: Text(
                                      "W",
                                      style: GoogleFonts.roboto(
                                          color: Colors.white,
                                          fontSize: 12,
                                          fontWeight: FontWeight.bold),
                                    )),
                                  )),
                              Expanded(
                                  flex: 1,
                                  child: Container(
                                    width: 25,
                                    height: 44,
                                    decoration: BoxDecoration(
                                        color: Color(0xFFE33E3E),
                                        borderRadius: BorderRadius.only(
                                            bottomRight: Radius.circular(15),
                                            topRight: Radius.circular(15))),
                                    child: Center(
                                        child: Text("W",
                                            style: GoogleFonts.roboto(
                                                color: Colors.white,
                                                fontSize: 12,
                                                fontWeight: FontWeight.bold))),
                                  )),
                            ],
                          ),
                        ),
                        SizedBox(width: 10),
                        Container(
                          height: 27,
                          width: 27,
                          decoration: BoxDecoration(
                              color: Color(0xFFF6EF38),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(5))),
                          child: Center(
                              child: Text(
                            "6.13",
                            style: GoogleFonts.roboto(
                                fontSize: 10,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          )),
                        ),
                        Container(
                          height: 27,
                          width: 27,
                          child: Center(
                              child: Text(
                            "10",
                            style: GoogleFonts.roboto(
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                                color: Color(0xFF848282)),
                          )),
                        )
                      ],
                    )))
          ]),
        ));
  }
}
