import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class WidgetMatchVsBox extends StatelessWidget {
  const WidgetMatchVsBox({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 116,
        decoration: BoxDecoration(
            color: Color(0xFFF8F8FB),
            borderRadius: BorderRadius.all(
              Radius.circular(20),
            )),
        child: Row(
          children: [
            Expanded(
                flex: 2,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 43,
                      height: 43,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage(
                                  "assets/images/NicePng_psg-logo-png_3429208_small.png"))),
                    ),
                    Text("2.40"),
                    SizedBox(
                      height: 8,
                    ),
                    Container(
                        width: 68,
                        height: 18,
                        decoration: BoxDecoration(
                            color: Color(0xFF627FE5),
                            borderRadius: BorderRadius.all(Radius.circular(3))),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "ABONNE",
                              style: GoogleFonts.roboto(
                                  fontSize: 8,
                                  fontWeight: FontWeight.w500,
                                  color: Color(0xFFFFFFFF)),
                            ),
                          ],
                        ))
                  ],
                )),
            Expanded(
                flex: 1,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [Text("aujourd'hui"), Text("20:00")],
                )),
            Expanded(
                flex: 2,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 43,
                      height: 43,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image:
                                  AssetImage("assets/images/barca-icon.png"))),
                    ),
                    Text("2.40"),
                    SizedBox(
                      height: 8,
                    ),
                    Container(
                        width: 68,
                        height: 18,
                        decoration: BoxDecoration(
                            border: Border.all(color: Color(0xFF627FE5)),
                            borderRadius: BorderRadius.all(Radius.circular(3))),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "S'ABONNER",
                              style: GoogleFonts.roboto(
                                  fontSize: 8,
                                  fontWeight: FontWeight.w500,
                                  color: Color(0xFF627FE5)),
                            ),
                          ],
                        )),
                  ],
                ))
          ],
        ));
  }
}
