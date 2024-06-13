import 'package:easy_sizer/device.dart';

extension Responsive on num {
  double get h => (this / 100) * Device.height;
  double get w => (this / 100) * Device.width;
  double get sp => this * (((h + w) + (Device.pixelRatio * Device.aspectRatio)) / 2.08) / 100;
}
