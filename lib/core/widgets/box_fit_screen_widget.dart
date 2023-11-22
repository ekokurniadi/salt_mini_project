import 'package:flutter/material.dart';
import 'package:salt_flutter_mini_project/core/styles/default_style.dart';

class BoxFitScreenWidget extends StatelessWidget {
  const BoxFitScreenWidget({
    super.key,
    required this.child,
  });
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: defaultPadding,
      width: MediaQuery.sizeOf(context).width,
      height: MediaQuery.sizeOf(context).height,
      child: child,
    );
  }
}
