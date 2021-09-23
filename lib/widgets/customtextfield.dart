import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final String hinttext;
  final TextEditingController controller;
  final Color color;
  final Function onchanged;
  const CustomTextField({
    Key? key,
    required this.hinttext,
    required this.controller,
    required this.color,
    required this.onchanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: TextFormField(
        onChanged: onchanged(),
        controller: controller,
        style: TextStyle(color: Colors.black),
        decoration: InputDecoration(
            hintText: hinttext,
            hintStyle: TextStyle(color: color),
            prefixIcon: Icon(
              Icons.search,
              color: Colors.black,
            ),
            suffixIcon: Icon(
              Icons.keyboard_voice,
              color: Colors.black,
            ),
            focusedBorder:
                OutlineInputBorder(borderRadius: BorderRadius.circular(5)),
            enabled: true,
            filled: true,
            fillColor: Colors.white,
            enabledBorder:
                OutlineInputBorder(borderRadius: BorderRadius.circular(5))),
      ),
    );
  }
}
