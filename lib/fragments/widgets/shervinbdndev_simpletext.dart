import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

class ShervinBdnDevSimpleText extends StatelessWidget {
  final String text;
  final Color color;
  final double size;
  final FontWeight weight;

  const ShervinBdnDevSimpleText({
    super.key,
    required this.text,
    required this.color,
    required this.size,
    required this.weight,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontFamily: 'ABeeZee',
        color: color,
        fontSize: size,
        fontWeight: weight,
      ),
    );
  }
}

class BdnAnimatedText extends StatelessWidget {
  const BdnAnimatedText({super.key});

  @override
  Widget build(BuildContext context) {
    return AnimatedTextKit(
      animatedTexts: [
        TypewriterAnimatedText(
          'به وبسایت من خوش آمدید',
          textStyle: const TextStyle(
            fontFamily: 'ABeeZee',
            color: Colors.white,
            fontSize: 25.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        TypewriterAnimatedText(
          'من شروین بدن آرا هستم',
          textStyle: const TextStyle(
            fontFamily: 'ABeeZee',
            color: Colors.white,
            fontSize: 25.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        TypewriterAnimatedText(
          'یک توسعه دهنده و برنامه نویس وب',
          textStyle: const TextStyle(
            fontFamily: 'ABeeZee',
            color: Colors.white,
            fontSize: 25.0,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
      repeatForever: true,
    );
  }
}
