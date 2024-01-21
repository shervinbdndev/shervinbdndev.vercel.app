import 'package:wave/wave.dart';
import 'package:wave/config.dart';
import 'package:flutter/material.dart';
import 'package:shervinbdndev/constants/constants.dart';

class ShervinBdnDevWave extends StatelessWidget {
  final double height;

  const ShervinBdnDevWave({
    super.key,
    required this.height,
  });

  @override
  Widget build(BuildContext context) {
    return WaveWidget(
      config: CustomConfig(
        durations: <int>[
          4000,
          5000,
        ],
        heightPercentages: <double>[
          0.65,
          0.66,
        ],
        colors: <Color>[
          BdnColors.purple,
          BdnColors.secondaryPurple,
        ],
      ),
      size: Size(
        double.infinity,
        height,
      ),
    );
  }
}
