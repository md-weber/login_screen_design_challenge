import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

const BoxDecoration boxDecorationBackgroundImage = const BoxDecoration(
  image: DecorationImage(
    image: AssetImage("assets/images/bg-main.jpg"),
    fit: BoxFit.cover,
    colorFilter: ColorFilter.mode(
      Colors.black12,
      BlendMode.darken,
    ),
  ),
);

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: boxDecorationBackgroundImage,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Center(
              child: Container(
                width: 100,
                height: 100,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      image: AssetImage("assets/images/demo_logo.jpg"),
                    ),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.black.withOpacity(0.6),
                          blurRadius: 6,
                          offset: Offset(2, 6))
                    ]),
              ),
            ),
            Center(
              child: Text(
                "Budget Tracker",
                style: GoogleFonts.pacifico(
                  color: Colors.white,
                  fontSize: 36.0,
                ),
              ),
            ),
            Container(),
            Container()
          ],
        ),
      ),
    );
  }
}
