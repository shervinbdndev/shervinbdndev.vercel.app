import 'package:flutter/material.dart';
import 'package:shervinbdndev/components/component.dart';
import 'package:shervinbdndev/fragments/widgets/buttons/shervinbnddev_viewcertificatebuton.dart';
import 'package:shervinbdndev/fragments/widgets/texts/shervinbdndev_simpletext.dart';

class ShervinBdnDevCertificateBox extends StatelessWidget {
  final String image;
  final String text;
  final double width;
  final VoidCallback ontap;

  const ShervinBdnDevCertificateBox({
    super.key,
    required this.image,
    required this.text,
    required this.width,
    required this.ontap,
  });

  @override
  Widget build(BuildContext context) {
    var deviceWidth = MediaQuery.of(context).size.width;

    return Column(
      children: <Widget>[
        Container(
          width: 350.0,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.0),
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(10.0),
            child: Image.network(
              image,
              fit: BoxFit.cover,
              filterQuality: FilterQuality.high,
            ),
          ),
        ),
        const SizedBox(height: 10.0),
        SizedBox(
          width: width,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(top: 5.0),
                child: ShervinBdnDevSimpleText(
                  text: text,
                  color: BdnColors.purple,
                  size: deviceWidth <= BdnConfig.websiteResponsivenessLimit
                      ? 15.0
                      : 15.5,
                  weight: FontWeight.bold,
                ),
              ),
              ShervinBdnDevViewCertificateButton(ontap: ontap)
            ],
          ),
        ),
      ],
    );
  }
}
