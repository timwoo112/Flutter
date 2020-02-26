import 'package:flutter/material.dart';

class GameButton{
  final id;
  String text;
  Color bg;
  bool enabled;
  Color colorText;

  GameButton({this.id, this.text="", this.bg=Colors.grey, this.colorText=Colors.white, this.enabled = true});
}