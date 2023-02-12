import 'package:flutter/material.dart';

class ShervinBdnDevRipple extends StatelessWidget {
  final VoidCallback ontap;
  final Widget widget;
  final double bd;

  const ShervinBdnDevRipple({
    super.key,
    required this.ontap,
    required this.widget,
    required this.bd,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        borderRadius: BorderRadius.circular(bd),
        onTap: ontap,
        child: widget,
      ),
    );
  }
}
