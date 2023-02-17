import 'package:flutter/material.dart';

class ShervinBdnDevPageRouteWidget extends StatelessWidget {
  final String text;
  final VoidCallback ontap;

  const ShervinBdnDevPageRouteWidget({
    super.key,
    required this.text,
    required this.ontap,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20.0),
      child: GestureDetector(
        onTap: ontap,
        child: Text(
          text,
          style: const TextStyle(
            fontFamily: 'Vazirmatn',
            color: Colors.white,
            fontSize: 15.0,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
