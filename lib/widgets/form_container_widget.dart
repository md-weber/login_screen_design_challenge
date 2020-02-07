import 'package:flutter/material.dart';

import 'custom_form_field_widget.dart';

const kBoxDecorationFormContainer = const BoxDecoration(
  boxShadow: [
    const BoxShadow(
      color: const Color(0x61000000),
      blurRadius: 4.0,
      offset: const Offset(2, 1),
    )
  ],
  gradient: LinearGradient(
    begin: Alignment.bottomLeft,
    end: Alignment.topRight,
    colors: [
      const Color(0xAA4D95AD),
      const Color(0xAAFFFFFF),
    ],
  ),
  borderRadius: BorderRadius.only(
    topLeft: Radius.circular(30.0),
    bottomRight: Radius.circular(30.0),
  ),
);

class FormContainerWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: kBoxDecorationFormContainer,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 50.0, horizontal: 20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            CustomFormFieldWidget(
              icon: Icon(
                Icons.mail,
                color: Color(0xFF5EA7BE),
                size: 22.0,
              ),
            ),
            SizedBox(height: 20.0),
            CustomFormFieldWidget(
              icon: Icon(
                Icons.lock,
                color: Color(0xFF5EA7BE),
                size: 22.0,
              ),
              obscuredText: true,
            ),
            SizedBox(height: 20.0),
            CustomFormFieldWidget(
              icon: Icon(
                Icons.lock,
                color: Color(0xFF5EA7BE),
                size: 22.0,
              ),
              obscuredText: true,
            ),
          ],
        ),
      ),
    );
  }
}
