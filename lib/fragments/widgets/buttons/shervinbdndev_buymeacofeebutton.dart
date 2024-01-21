import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:shervinbdndev/constants/constants.dart';
import 'package:shervinbdndev/fragments/widgets/texts/shervinbdndev_simpletext.dart';

class ShervinBdnDevBuyMeACoffeButton extends StatelessWidget {
  const ShervinBdnDevBuyMeACoffeButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 350.0,
      height: 100.0,
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          colors: <Color>[
            BdnColors.secondaryPurple,
            BdnColors.purple,
          ],
        ),
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: () async {
            launchUrl(
              Uri.parse('https://www.coffeebede.com/shervinbdndev'),
            );
          },
          borderRadius: BorderRadius.circular(10.0),
          child: const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Icon(
                Icons.coffee_maker_outlined,
                color: Colors.white,
                size: 40.0,
              ),
              SizedBox(width: 10.0),
              ShervinBdnDevSimpleText(
                text: 'یک قهوه من رو مهمون کن',
                color: Colors.white,
                size: 20.0,
                family: BdnConfig.websitePersianFontFamily,
                weight: FontWeight.bold,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
