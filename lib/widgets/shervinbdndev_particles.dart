import 'package:flutter/material.dart';
import 'package:particles_flutter/particles_flutter.dart';

class ShervinBdnDevParticles extends StatelessWidget {
  final double height;
  final double deviceWidth;

  const ShervinBdnDevParticles({
    super.key,
    required this.height,
    required this.deviceWidth,
  });

  @override
  Widget build(BuildContext context) {
    return CircularParticle(
      height: height,
      width: deviceWidth,
      speedOfParticles: 0.8,
      numberOfParticles: 100.0,
      connectDots: false,
      isRandSize: true,
      isRandomColor: false,
      onTapAnimation: true,
      awayAnimationDuration: const Duration(milliseconds: 1000),
      enableHover: true,
      hoverColor: Colors.deepPurple,
      awayAnimationCurve: Curves.easeInToLinear,
    );
  }
}
