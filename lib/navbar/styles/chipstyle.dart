import 'package:flutter/material.dart';

import '../inspired/inspired.dart';

class ChipStyle {
  final double? size;
  final Color? background;
  final Color? color;
  final bool? isHexagon;
  final bool? drawHexagon;
  final bool? convexBridge;
  final NotchSmoothness? notchSmoothness;

  const ChipStyle({
    this.size,
    this.background = const Color.fromRGBO(171, 124, 230, 1),
    this.color,
    this.isHexagon,
    this.drawHexagon,
    this.convexBridge,
    this.notchSmoothness,
  });
}
