import 'package:flutter/material.dart';

class ShervinBdnDevRipple extends StatelessWidget {
  final VoidCallback ontap;
  final Widget widget;

  const ShervinBdnDevRipple({
    super.key,
    required this.ontap,
    required this.widget,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: ontap,
        child: widget,
      ),
    );
  }
}
