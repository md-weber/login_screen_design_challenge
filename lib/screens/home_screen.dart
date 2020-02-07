import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:login_screen_design_challenge/widgets/form_container_widget.dart';
import 'package:login_screen_design_challenge/widgets/logo_widget.dart';

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
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 50.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              LogoWidget(),
              Center(
                child: Text(
                  "Budget Tracker",
                  style: GoogleFonts.pacifico(
                    color: Colors.white,
                    fontSize: 36.0,
                  ),
                ),
              ),
              FormContainerWidget(),
              RaisedButton(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30.0),
                ),
                color: Color(0xFF61a7be),
                elevation: 2.0,
                child: Text("Register"),
                onPressed: () {},
              )
            ],
          ),
        ),
      ),
    );
  }
}
