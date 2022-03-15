import 'package:flutter/material.dart';

// const brown = const Color("0xFFB2522");

class HexColor extends Color{
  static int _getColorFromHex(String hexColor) {
    hexColor = hexColor.toUpperCase().replaceAll("#", "");
    if (hexColor.length == 6){
      hexColor = "FF" + hexColor;
    }
    return int.parse(hexColor, radix: 16);
  }
  HexColor(final String hexColor) : super(_getColorFromHex(hexColor));
}

Color color1 = HexColor("#FF8A00");
Color gradient1 = HexColor("#14A800");
Color gradient2 = HexColor("##168907");
Color grey = HexColor("#969696");
//Color background = HexColor("#C4C4C4");
Color white = HexColor("#FFFFFF");
Color input = HexColor("#F9F9F9");
Color range = HexColor("#FF8A00");
Color text = HexColor("#5E5E5E");
Color icon = HexColor("#FBFBFB");
Color first = HexColor("#3D3D3D");
Color tab = HexColor("#FFF4E7");
Color color = HexColor("#7D7D7D");
Color background = HexColor("#E9E9E9");
Color command = HexColor("#4C4C4C");
Color hint = HexColor("#BEBEBE");
Color red = HexColor("#FF0000");




