import 'package:flutter/material.dart';

class CustomFormFieldWidget extends StatelessWidget {
  final Icon icon;
  final bool obscuredText;

  const CustomFormFieldWidget({
    Key key,
    this.icon,
    this.obscuredText = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 2.0,
      borderRadius: BorderRadius.circular(30.0),
      child: TextField(
        obscureText: obscuredText,
        decoration: InputDecoration(
            isDense: true,
            filled: true,
            fillColor: const Color(0xFFFFFFFF),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(30.0),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(30.0),
              borderSide: BorderSide(
                color: Colors.transparent,
              ),
            ),
            prefixIcon: Container(
              padding: EdgeInsets.only(left: 8.0, right: 8.0),
              margin: EdgeInsets.only(right: 8.0),
              decoration: BoxDecoration(
                border: Border(
                  right: BorderSide(color: Color(0xFF5EA7BE), width: 1),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 6.0),
                child: icon,
              ),
            )),
      ),
    );
  }
}
