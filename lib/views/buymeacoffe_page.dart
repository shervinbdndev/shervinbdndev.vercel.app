import 'package:flutter/material.dart';
import 'package:meta_seo/meta_seo.dart';
import 'package:flutter/foundation.dart';
import 'package:shervinbdndev/constants/constants.dart';
import 'package:shervinbdndev/fragments/shervinbdndev_scaffold.dart';
import 'package:shervinbdndev/fragments/widgets/texts/shervinbdndev_simpletext.dart';
import 'package:shervinbdndev/fragments/widgets/buttons/shervinbdndev_buymeacofeebutton.dart';

class BuyMeACoffeePage extends StatefulWidget {
  const BuyMeACoffeePage({super.key});

  @override
  State<BuyMeACoffeePage> createState() => _BuyMeACoffeePageState();
}

class _BuyMeACoffeePageState extends State<BuyMeACoffeePage> {
  @override
  Widget build(BuildContext context) {
    if (kIsWeb) {
      MetaSEO meta = MetaSEO();
      meta.author(author: 'شروین بدن آرا');
      meta.description(description: 'صفحه حمایت');
      meta.keywords(keywords: 'فلاتر, متا, سئو, دارت, وب');
    }

    return const ShervinBdnDevScaffold(
      importedWidgets: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          SizedBox(height: 30.0),
          ShervinBdnDevSimpleText(
            text: '😊❤️ با کلیک کردن رو این دکمه میتونی از من حمایت کنی',
            color: Colors.white,
            size: 18.0,
            weight: FontWeight.normal,
            family: BdnConfig.websitePersianFontFamily,
          ),
          SizedBox(height: 50.0),
          ShervinBdnDevBuyMeACoffeButton(),
          SizedBox(height: 50.0),
        ],
      ),
    );
  }
}
