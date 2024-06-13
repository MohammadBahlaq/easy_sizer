import 'package:easy_sizer/device.dart';
import 'package:flutter/material.dart';

class EasySizer extends StatelessWidget {
  const EasySizer({
    super.key,
    required this.builder,
  });

  final Widget Function(BuildContext, BoxConstraints, Orientation) builder;

  @override
  Widget build(BuildContext context) {
    if (MediaQuery.of(context).size.height <= 0 //
            ||
            MediaQuery.of(context).size.width <= 0 //
        ) return const SizedBox();

    Device.mediaQuery = MediaQuery.of(context);

    return LayoutBuilder(
      builder: (context, constraints) => OrientationBuilder(
        builder: (context, orientation) => builder(context, constraints, orientation),
      ),
    );
  }
}
