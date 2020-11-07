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
