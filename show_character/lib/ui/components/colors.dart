import 'package:flutter/material.dart';
import 'package:show_character/constant/theme.dart';

Color showColor({required int colorIndex}) {
  return colorContainer[colorIndex % colorContainer.length];
}

