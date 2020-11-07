import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

const Color k_primary_app_color = Color(0xFFB8A1EA);
const Color k_button_color = Color(0xFFAF92F0);

final BoxDecoration k_screen_decor = BoxDecoration(
    gradient: LinearGradient(
  colors: [
    Colors.white,
    k_primary_app_color,
  ],
  begin: FractionalOffset.topCenter,
  end: FractionalOffset.bottomCenter,
  stops: [0.0, 1.0],
));
const k_text_field_decor = InputDecoration(
    filled: true,
    fillColor: Colors.white,
    icon: Icon(
      Icons.email,
      color: Colors.white,
    ),
    hintText: "Email",
    hintStyle: TextStyle(
      color: Colors.grey,
    ),
    border: OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(10.0)),
      borderSide: BorderSide.none,
    ));
