import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ShervinBdnDevBlob extends StatelessWidget {
  final double width;
  final double height;
  final Widget importedWidgets;

  const ShervinBdnDevBlob({
    super.key,
    required this.width,
    required this.height,
    required this.importedWidgets,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: <Widget>[
        Center(
          child: SizedBox(
            width: width,
            height: height,
            child: SvgPicture.asset('assets/svgs/blob.svg'),
          ),
        ),
        importedWidgets,
      ],
    );
  }
}
