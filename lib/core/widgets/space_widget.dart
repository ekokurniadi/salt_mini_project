import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class VerticalSpaceWidget extends StatelessWidget {
  const VerticalSpaceWidget({super.key, this.space = 16});
  final double space;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 16.h,
    );
  }
}
