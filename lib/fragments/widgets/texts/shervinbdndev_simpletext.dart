import 'package:flutter/material.dart';
import 'package:shervinbdndev/components/component.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:seo_renderer/renderers/text_renderer/text_renderer_vm.dart';
import 'package:seo_renderer/renderers/text_renderer/text_renderer_style.dart';

class ShervinBdnDevSimpleText extends StatelessWidget {
  final String text;
  final Color color;
  final double size;
  final String family;
  final FontWeight weight;

  const ShervinBdnDevSimpleText({
    super.key,
    required this.text,
    required this.color,
    required this.size,
    required this.family,
    required this.weight,
  });

  @override
  Widget build(BuildContext context) {
    return TextRenderer(
      style: TextRendererStyle.paragraph,
      child: Text(
        text,
        style: TextStyle(
          fontFamily: family,
          color: color,
          fontSize: size,
          fontWeight: weight,
        ),
      ),
    );
  }
}

class BdnAnimatedText extends StatelessWidget {
  const BdnAnimatedText({super.key});

  @override
  Widget build(BuildContext context) {
    var deviceWidth = MediaQuery.of(context).size.width;

    return TextRenderer(
      style: TextRendererStyle.header1,
      child: AnimatedTextKit(
        animatedTexts: [
          TypewriterAnimatedText(
            'به وبسایت من خوش آمدید',
            textStyle: TextStyle(
              fontFamily: 'Vazirmatn',
              color: Colors.white,
              fontSize: deviceWidth <= BdnConfig.websiteResponsivenessLimit
                  ? 20.0
                  : 25.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          TypewriterAnimatedText(
            'من شروین بدن آرا هستم',
            textStyle: TextStyle(
              fontFamily: 'Vazirmatn',
              color: Colors.white,
              fontSize: deviceWidth <= BdnConfig.websiteResponsivenessLimit
                  ? 20.0
                  : 25.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          TypewriterAnimatedText(
            'یک توسعه دهنده و برنامه نویس وب',
            textStyle: TextStyle(
              fontFamily: 'Vazirmatn',
              color: Colors.white,
              fontSize: deviceWidth <= BdnConfig.websiteResponsivenessLimit
                  ? 20.0
                  : 25.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
        repeatForever: true,
      ),
    );
  }
}
