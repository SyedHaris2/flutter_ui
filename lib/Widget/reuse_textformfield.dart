import 'package:flutter/material.dart';

class ReusedTextformfield extends StatelessWidget {
  TextEditingController? controller;
  String? title;
  IconData? iconData;
  Widget? prefixIcon;
  void Function()? onPressed;
  ReusedTextformfield(
      {super.key, this.controller, this.title, this.onPressed, this.iconData});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 13),
      child: Container(
        decoration: BoxDecoration(
            color: Colors.grey[200],
            border: Border.all(color: Colors.white),
            borderRadius: BorderRadius.circular(12)),
        child: Padding(
          padding: const EdgeInsets.only(left: 10.0),
          child: TextFormField(
            controller: controller,
            keyboardType: TextInputType.text,
            decoration: InputDecoration(
                prefixIcon:
                    IconButton(onPressed: onPressed, icon: Icon(iconData)),
                hintText: title,
                fillColor: Colors.grey[200],
                border: InputBorder.none),
          ),
        ),
      ),
    );
  }
}
