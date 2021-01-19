import 'package:flutter/material.dart';

class StrokeFont {
  ///
  /// 生成描边字
  /// fontStr 内容
  /// fontSize 字体大小
  /// strokeColor 描边色
  /// strokeWidth 描边宽度
  /// fillColor 填充色
  Widget renderFont (String fontStr, double fontSize, { Color strokeColor: Colors.black,double strokeWidth: 2.0, Color fillColor: Colors.white, }) {
    return Stack(
      children: [
        Text(
          fontStr,
          style: TextStyle(
            fontSize: fontSize,
            fontWeight: FontWeight.bold,
            foreground: Paint()..strokeWidth = strokeWidth..color = strokeColor..style = PaintingStyle.stroke,
              decoration: TextDecoration.none
          ),
        ),
        Text(
          fontStr,
          style: TextStyle(
            fontSize: fontSize,
            fontWeight: FontWeight.bold,
            foreground: Paint()..strokeWidth = strokeWidth..color = fillColor..style = PaintingStyle.fill,
              decoration: TextDecoration.none
          )
        ),
      ],
    );
  }
}