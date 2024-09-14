import 'package:flutter/material.dart';

class Mytextform extends StatefulWidget {
  Mytextform(
      {super.key,
      required this.controller,
      required this.hinttext,
      required this.iconData});
  final TextEditingController controller;
  final String hinttext;
  final IconData iconData;
  @override
  State<Mytextform> createState() => _MytextformState();
}

class _MytextformState extends State<Mytextform> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 8, right: 8),
      child: TextFormField(
        validator: (value) {
          if (value == "" || value!.isEmpty) {
            return ("can't be null");
          }
          return null;
        },
        controller: widget.controller,
        decoration: InputDecoration(
            filled: true,
            fillColor: Colors.white,
            prefixIcon: Icon(
              widget.iconData,
              color: Colors.grey,
              size: 15,
            ),
            hintText: widget.hinttext,
            hintStyle: TextStyle(
              fontSize: 14,
              color: Color(0xff969696),
              fontWeight: FontWeight.bold,
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
            )),
      ),
    );
  }
}
