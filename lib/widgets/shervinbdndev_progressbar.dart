import 'package:flutter/material.dart';
import 'package:shervinbdndev/components/component.dart';
import 'package:shervinbdndev/widgets/shervinbdndev_simpletext.dart';
import 'package:flutter_rounded_progress_bar/rounded_progress_bar_style.dart';
import 'package:flutter_rounded_progress_bar/flutter_rounded_progress_bar.dart';

class ShervinBdnDevProgressBar extends StatelessWidget {
  final IconData icon;
  final double percent;
  final String text;

  const ShervinBdnDevProgressBar({
    super.key,
    required this.icon,
    required this.percent,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 350.0,
      child: RoundedProgressBar(
        borderRadius: BorderRadius.circular(10.0),
        milliseconds: 600,
        style: RoundedProgressBarStyle(
          borderWidth: 0,
          colorProgress: BdnColors.purple,
          backgroundProgress: Colors.blueGrey,
          colorProgressDark: const Color.fromARGB(255, 83, 71, 209),
        ),
        percent: percent,
        childLeft: Icon(
          icon,
          size: 30.0,
          color: BdnColors.blue,
        ),
        paddingChildLeft: const EdgeInsets.only(
          bottom: 1.5,
          left: 10.0,
        ),
        childRight: ShervinBdnDevSimpleText(
          text: text,
          color: Colors.white,
          size: 15.0,
          weight: FontWeight.bold,
        ),
      ),
    );
  }
}
