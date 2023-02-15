import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:meta_seo/meta_seo.dart';
import 'package:shervinbdndev/components/component.dart';
import 'package:shervinbdndev/fragments/shervinbdndev_scaffold.dart';
import 'package:shervinbdndev/fragments/widgets/shervinbdndev_divider.dart';
import 'package:shervinbdndev/fragments/widgets/texts/shervinbdndev_simpletext.dart';

class SecondPost extends StatefulWidget {
  const SecondPost({super.key});

  @override
  State<SecondPost> createState() => _SecondPostState();
}

class _SecondPostState extends State<SecondPost> {
  @override
  Widget build(BuildContext context) {
    if (kIsWeb) {
      MetaSEO meta = MetaSEO();
      meta.seoAuthor('شروین بدن آرا');
      meta.seoDescription('پست دوم');
      meta.seoKeywords('فلاتر, متا, سئو, دارت, وب');
    }

    var deviceWidth = MediaQuery.of(context).size.width;

    return ShervinBdnDevScaffold(
      importedWidgets: Column(
        children: <Widget>[
          const SizedBox(height: 30.0),
          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              ShervinBdnDevSimpleText(
                text: '؟ import',
                color: BdnColors.purple,
                size: 35.0,
                weight: FontWeight.bold,
              ),
              SizedBox(width: 8.0),
              ShervinBdnDevSimpleText(
                text: 'اصلا چرا',
                color: Colors.white,
                size: 35.0,
                weight: FontWeight.bold,
              ),
            ],
          ),
          const SizedBox(height: 15.0),
          ShervinBdnDevSimpleText(
            text: 'تو پایتون ما برای استفاده کردن از پکیج ها و ماژول هامون',
            color: Colors.white,
            size: deviceWidth <= BdnConfig.websiteResponsivenessLimit
                ? 12.5
                : 20.0,
            weight: FontWeight.normal,
          ),
          ShervinBdnDevSimpleText(
            text: 'نیاز داریم که اونارو به اسکریپت اصلیمون معرفی کنیم',
            color: Colors.white,
            size: deviceWidth <= BdnConfig.websiteResponsivenessLimit
                ? 12.5
                : 20.0,
            weight: FontWeight.normal,
          ),
          ShervinBdnDevSimpleText(
            text: 'کنیم و ازشون استفاده کنیم import یا به اصطلاحی اونارو',
            color: Colors.white,
            size: deviceWidth <= BdnConfig.websiteResponsivenessLimit
                ? 12.5
                : 20.0,
            weight: FontWeight.normal,
          ),
          ShervinBdnDevSimpleText(
            text:
                'پایتون هم دوتا راه برای استفاده کردن از پکیج ها و ماژول هاش داره',
            color: Colors.white,
            size: deviceWidth <= BdnConfig.websiteResponsivenessLimit
                ? 12.5
                : 20.0,
            weight: FontWeight.normal,
          ),
          const SizedBox(height: 60.0),
          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              ShervinBdnDevSimpleText(
                text: 'import',
                color: BdnColors.keywordColor,
                size: 35.0,
                weight: FontWeight.bold,
              ),
              SizedBox(width: 8.0),
              ShervinBdnDevSimpleText(
                text: 'بررسی',
                color: Colors.white,
                size: 35.0,
                weight: FontWeight.bold,
              ),
            ],
          ),
          const SizedBox(height: 10.0),
          ShervinBdnDevSimpleText(
            text: 'اولین راه برای استفاده کردن از پکیج ها و ماژول ها',
            color: Colors.white,
            size: deviceWidth <= BdnConfig.websiteResponsivenessLimit
                ? 12.5
                : 20.0,
            weight: FontWeight.normal,
          ),
          ShervinBdnDevSimpleText(
            text:
                'ئه که راحت ترین سینتکس رو نسبت به روش دوم داره import استفاده از کلمه کلیدی ',
            color: Colors.white,
            size: deviceWidth <= BdnConfig.websiteResponsivenessLimit
                ? 12.5
                : 20.0,
            weight: FontWeight.normal,
          ),
          SizedBox(
            width: deviceWidth <= BdnConfig.websiteResponsivenessLimit
                ? 510.0
                : 700.0,
            child: ClipRRect(
              child: Image.asset('assets/pics/post2_import.png'),
            ),
          ),
          const SizedBox(height: 30.0),
          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              ShervinBdnDevSimpleText(
                text: '__import__',
                color: BdnColors.methodColor,
                size: 35.0,
                weight: FontWeight.bold,
              ),
              SizedBox(width: 8.0),
              ShervinBdnDevSimpleText(
                text: 'بررسی',
                color: Colors.white,
                size: 35.0,
                weight: FontWeight.bold,
              ),
            ],
          ),
          const SizedBox(height: 10.0),
          ShervinBdnDevSimpleText(
            text: 'دومین راه برای استفاده از ماژول ها و پکیجامون',
            color: Colors.white,
            size: deviceWidth <= BdnConfig.websiteResponsivenessLimit
                ? 12.5
                : 20.0,
            weight: FontWeight.normal,
          ),
          ShervinBdnDevSimpleText(
            text:
                'ئه که به نسبت روش اول از لحاظ نوشتاری سخت تره __import__ استفاده از داندر متد',
            color: Colors.white,
            size: deviceWidth <= BdnConfig.websiteResponsivenessLimit
                ? 12.5
                : 20.0,
            weight: FontWeight.normal,
          ),
          ShervinBdnDevSimpleText(
            text:
                'ولی کارایی همون روش اول رو داره و مشکلی تو استفاده کردن پکیجاتون پیش نمیاد',
            color: Colors.white,
            size: deviceWidth <= BdnConfig.websiteResponsivenessLimit
                ? 12.5
                : 20.0,
            weight: FontWeight.normal,
          ),
          SizedBox(
            width: deviceWidth <= BdnConfig.websiteResponsivenessLimit
                ? 510.0
                : 700.0,
            child: ClipRRect(
              child: Image.asset('assets/pics/post2_dimport.png'),
            ),
          ),
          const ShervinBdnDevDivider(),
        ],
      ),
    );
  }
}
