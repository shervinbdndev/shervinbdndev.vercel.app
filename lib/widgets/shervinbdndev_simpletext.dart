import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:shervinbdndev/components/component.dart';

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
      style: GoogleFonts.aBeeZee(
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
          textStyle: GoogleFonts.aBeeZee(
            color: Colors.white,
            fontSize: 25.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        TypewriterAnimatedText(
          'من شروین بدن آرا هستم',
          textStyle: GoogleFonts.aBeeZee(
            color: Colors.white,
            fontSize: 25.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        TypewriterAnimatedText(
          'یک توسعه دهنده و برنامه نویس وب',
          textStyle: GoogleFonts.aBeeZee(
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
