import 'package:flutter/material.dart';
import 'package:hostingwebinarui/components/components.dart';

class WebinarTextField extends StatelessWidget {
  final TextEditingController controller;
  final double deviceWidth;
  final String hint;
  final IconData icon;

  const WebinarTextField({
    super.key,
    required this.controller,
    required this.deviceWidth,
    required this.hint,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: deviceWidth / 1.5,
      height: 50.0,
      child: Material(
        color: Colors.transparent,
        child: TextField(
          controller: controller,
          cursorColor: WebinarColors.redAccent,
          style: const TextStyle(
            fontSize: 18.0,
            color: WebinarColors.text,
            fontFamily: 'SignikaNegative',
            fontWeight: FontWeight.normal,
            decoration: TextDecoration.none,
          ),
          decoration: InputDecoration(
            prefixIcon: Icon(
              icon,
              color: WebinarColors.redAccent,
            ),
            contentPadding: const EdgeInsets.only(left: 10.0),
            hintText: hint,
            hintStyle: const TextStyle(
              fontSize: 18.0,
              color: WebinarColors.text,
              fontFamily: 'SignikaNegative',
              fontWeight: FontWeight.normal,
              decoration: TextDecoration.none,
            ),
            enabledBorder: const OutlineInputBorder(
              borderSide: BorderSide(
                color: WebinarColors.text,
                width: 1.0,
              ),
            ),
            focusedBorder: const OutlineInputBorder(
              borderSide: BorderSide(
                color: WebinarColors.redAccent,
                width: 1.0,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
