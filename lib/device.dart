import 'package:flutter/material.dart';

class Device {
  static MediaQueryData? _mediaQuery;
  static MediaQueryData get mediaQuery => _mediaQuery!;
  static set mediaQuery(MediaQueryData value) => _mediaQuery ??= value;

  static double get height => Device.mediaQuery.size.height;
  static double get width => Device.mediaQuery.size.width;
  static double get aspectRatio => Device.mediaQuery.size.aspectRatio;
  static double get pixelRatio => Device.mediaQuery.devicePixelRatio;
}
