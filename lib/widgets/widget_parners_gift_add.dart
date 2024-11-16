import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class WidgetPartnerGiftAdd extends StatelessWidget {
  const WidgetPartnerGiftAdd({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //Padding(padding: EdgeInsets.only(bottom: 8), child: SizedBox(height: 137, child: Stack(children: [],),),)

    return SizedBox(
      width: 357,
      height: 167,
      child: Stack(children: [
        /*Container(
          child: Container(
              height: 137,
              width: MediaQuery.of(context).size.width -
                  MediaQuery.of(context).size.width * 0.12,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(28),
                image: DecorationImage(
                  image: AssetImage("assets/images/football-pitch.png"),
                ),
              )),
        ),*/
        Container(
          height: 137,
          width: MediaQuery.of(context).size.width -
              MediaQuery.of(context).size.width * 0.12,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(28),
              gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment(1, 0.1),
                  colors: <Color>[
                    Color(0xff4B68CF).withOpacity(0.92),
                    Color(0xff4B68CF).withOpacity(0.9),
                    Color(0xff39B262).withOpacity(0.7),
                  ])),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 33, top: 23),
          child: Row(
            children: [
              Container(
                  child: Text(
                      "Make your best predictions\n and win PS5 + FIFA 2023 ",
                      style: GoogleFonts.roboto(
                          fontWeight: FontWeight.w800,
                          color: Colors.white,
                          fontSize: 15))),
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: 1, top: 51),
          child: Container(
            height: 170,
            width: 140,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/images/playstation-5.png"))),
          ),
        ),
        Positioned(
            top: 0,
            right: -10,
            child: Container(
              width: 150,
              height: 150,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(
                          "assets/images/football_player_PNG9.png"))),
            ))
      ]),
    );
  }
}
