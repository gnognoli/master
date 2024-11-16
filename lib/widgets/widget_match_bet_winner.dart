import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class WidgetMatchBetWinner extends StatelessWidget {
  const WidgetMatchBetWinner({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 97,
      decoration: BoxDecoration(
          color: Color(0xFFF8F8FB),
          borderRadius: BorderRadius.all(Radius.circular(20))),
      child: Column(
        children: [
          Padding(
              padding: EdgeInsets.only(top: 5, bottom: 5),
              child: Text(
                "Qui va gagner ?",
                style: GoogleFonts.roboto(
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF848282)),
              )),
          Row(children: [
            Expanded(
                flex: 1,
                child: Padding(
                  padding: EdgeInsets.only(left: 14),
                  child: Container(
                    height: 53,
                    decoration: BoxDecoration(
                        color: Color(0xFF4B68CF),
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(30),
                            bottomLeft: Radius.circular(30))),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: 30,
                          width: 30,
                          decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(30)),
                              image: DecorationImage(
                                  image: AssetImage(
                                      "assets/images/NicePng_psg-logo-png_3429208_small.png"))),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          "X 2.60",
                          style: GoogleFonts.roboto(
                              fontWeight: FontWeight.bold, color: Colors.white),
                        )
                      ],
                    ),
                  ),
                )),
            Expanded(
                flex: 1,
                child: Padding(
                    padding: EdgeInsets.only(left: 0),
                    child: Container(
                      height: 53,
                      decoration: BoxDecoration(color: Color(0xFF848282)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            height: 20,
                            width: 20,
                            decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(30)),
                                image: DecorationImage(
                                    image: AssetImage(
                                        "assets/images/NicePng_psg-logo-png_3429208_small.png"))),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            "X",
                            style: GoogleFonts.roboto(
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                          Text(
                            "2.60",
                            style: GoogleFonts.roboto(
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Container(
                            height: 20,
                            width: 20,
                            decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(30)),
                                image: DecorationImage(
                                    image: AssetImage(
                                        "assets/images/barca-icon.png"))),
                          ),
                        ],
                      ),
                    ))),
            Expanded(
                flex: 1,
                child: Padding(
                    padding: EdgeInsets.only(right: 14),
                    child: Container(
                        height: 53,
                        decoration: BoxDecoration(
                            color: Color(0xFF848282),
                            borderRadius: BorderRadius.only(
                                topRight: Radius.circular(30),
                                bottomRight: Radius.circular(30))),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "2.60",
                              style: GoogleFonts.roboto(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                            SizedBox(
                              width: 2,
                            ),
                            Text(
                              "X",
                              style: GoogleFonts.roboto(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Container(
                              height: 30,
                              width: 30,
                              decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(30)),
                                  image: DecorationImage(
                                      image: AssetImage(
                                          "assets/images/barca-icon.png"))),
                            ),
                          ],
                        )))),
          ])
        ],
      ),
    );
  }
}
