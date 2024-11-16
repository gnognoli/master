import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';

class WidgetMatchBetCardCount extends StatelessWidget {
  const WidgetMatchBetCardCount({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 22, right: 22),
        child: Container(
          height: 200,
          decoration: BoxDecoration(
              color: Color(0xFFF8F8FB),
              borderRadius: BorderRadius.all(Radius.circular(33))),
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(top: 4, bottom: 4),
                child: Text(
                  "Nombre de cartons distribués?",
                  style: GoogleFonts.roboto(
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF848282)),
                ),
              ),
              Padding(
                  padding: EdgeInsets.only(left: 14, right: 14, bottom: 14),
                  child: Container(
                    height: 163,
                    decoration: BoxDecoration(
                        color: Color(0xFFF8F8FB),
                        borderRadius: BorderRadius.all(Radius.circular(33))),
                    child: Row(children: [
                      Expanded(
                          child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Expanded(
                              child: Container(
                            decoration: BoxDecoration(
                                color: Color(0xFF848282),
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(22))),
                            child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                    width: 20,
                                    height: 20,
                                    decoration: BoxDecoration(
                                        image: DecorationImage(
                                            image: AssetImage(
                                                "assets/images/cards.png"))),
                                  ),
                                  Text(
                                    "1 carton",
                                    style: GoogleFonts.roboto(
                                        color: Colors.white,
                                        fontSize: 12,
                                        fontWeight: FontWeight.w500),
                                  ),
                                  Text(
                                    "X 2.9",
                                    style: GoogleFonts.roboto(
                                        color: Colors.white,
                                        fontSize: 12,
                                        fontWeight: FontWeight.w500),
                                  )
                                ]),
                          )),
                          SizedBox(
                            height: 1.5,
                          ),
                          Expanded(
                              child: Container(
                            decoration: BoxDecoration(
                              color: Color(0xFF848282),
                            ),
                            child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                    width: 20,
                                    height: 20,
                                    decoration: BoxDecoration(
                                        image: DecorationImage(
                                            image: AssetImage(
                                                "assets/images/cards.png"))),
                                  ),
                                  Text(
                                    "2 cartons",
                                    style: GoogleFonts.roboto(
                                        color: Colors.white,
                                        fontSize: 12,
                                        fontWeight: FontWeight.w500),
                                  ),
                                  Text(
                                    "X 3.1",
                                    style: GoogleFonts.roboto(
                                        color: Colors.white,
                                        fontSize: 12,
                                        fontWeight: FontWeight.w500),
                                  )
                                ]),
                          )),
                          SizedBox(
                            height: 1.5,
                          ),
                          Expanded(
                              child: Container(
                            height: 163,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(22)),
                                color: Color(0xFF848282)),
                            child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                    width: 20,
                                    height: 20,
                                    decoration: BoxDecoration(
                                        image: DecorationImage(
                                            image: AssetImage(
                                                "assets/images/cards.png"))),
                                  ),
                                  Text(
                                    "3 cartons",
                                    style: GoogleFonts.roboto(
                                        color: Colors.white,
                                        fontSize: 12,
                                        fontWeight: FontWeight.w500),
                                  ),
                                  Text(
                                    "X 3.4",
                                    style: GoogleFonts.roboto(
                                        color: Colors.white,
                                        fontSize: 12,
                                        fontWeight: FontWeight.w500),
                                  )
                                ]),
                          ))
                        ],
                      )),
                      SizedBox(
                        width: 1.5,
                      ),
                      Expanded(
                          child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Expanded(
                              child: Container(
                                  height: 163,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.only(
                                          topRight: Radius.circular(22)),
                                      color: Color(0xFF848282)),
                                  child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Container(
                                          width: 20,
                                          height: 20,
                                          decoration: BoxDecoration(
                                              image: DecorationImage(
                                                  image: AssetImage(
                                                      "assets/images/cards.png"))),
                                        ),
                                        Text(
                                          "4 cartons",
                                          style: GoogleFonts.roboto(
                                              color: Colors.white,
                                              fontSize: 12,
                                              fontWeight: FontWeight.w500),
                                        ),
                                        Text(
                                          "X 1.2",
                                          style: GoogleFonts.roboto(
                                              color: Colors.white,
                                              fontSize: 12,
                                              fontWeight: FontWeight.w500),
                                        )
                                      ]))),
                          SizedBox(
                            height: 1.5,
                          ),
                          Expanded(
                              child: Container(
                                  height: 163,
                                  decoration:
                                      BoxDecoration(color: Color(0xFF4B68CF)),
                                  child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Container(
                                          width: 20,
                                          height: 20,
                                          decoration: BoxDecoration(
                                              image: DecorationImage(
                                                  image: AssetImage(
                                                      "assets/images/cards.png"))),
                                        ),
                                        Text(
                                          "5 cartons",
                                          style: GoogleFonts.roboto(
                                              color: Colors.white,
                                              fontSize: 12,
                                              fontWeight: FontWeight.w500),
                                        ),
                                        Text(
                                          "X 1.4",
                                          style: GoogleFonts.roboto(
                                              color: Colors.white,
                                              fontSize: 12,
                                              fontWeight: FontWeight.w500),
                                        )
                                      ]))),
                          SizedBox(
                            height: 1.5,
                          ),
                          Expanded(
                              child: Container(
                                  height: 163,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.only(
                                          bottomRight: Radius.circular(22)),
                                      color: Color(0xFF848282)),
                                  child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Container(
                                          width: 20,
                                          height: 20,
                                          decoration: BoxDecoration(
                                              image: DecorationImage(
                                                  image: AssetImage(
                                                      "assets/images/cards.png"))),
                                        ),
                                        Text(
                                          "6 cartons",
                                          style: GoogleFonts.roboto(
                                              color: Colors.white,
                                              fontSize: 12,
                                              fontWeight: FontWeight.w500),
                                        ),
                                        Text(
                                          "X 2.4",
                                          style: GoogleFonts.roboto(
                                              color: Colors.white,
                                              fontSize: 12,
                                              fontWeight: FontWeight.w500),
                                        )
                                      ])))
                        ],
                      ))
                    ]),
                  ))
            ],
          ),
        ));
  }
}
