import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:meta_seo/meta_seo.dart';
import 'package:shervinbdndev/components/component.dart';
import 'package:shervinbdndev/fragments/widgets/shervinbdndev_divider.dart';
import 'package:shervinbdndev/fragments/shervinbdndev_scaffold.dart';
import 'package:shervinbdndev/fragments/widgets/texts/shervinbdndev_simpletext.dart';

class FirstPost extends StatefulWidget {
  const FirstPost({super.key});

  @override
  State<FirstPost> createState() => _FirstPostState();
}

class _FirstPostState extends State<FirstPost> {
  @override
  Widget build(BuildContext context) {
    if (kIsWeb) {
      MetaSEO meta = MetaSEO();
      meta.seoAuthor('شروین بدن آرا');
      meta.seoDescription('پست اول');
      meta.seoKeywords('فلاتر, متا, سئو, دارت, وب');
    }

    var deviceWidth = MediaQuery.of(context).size.width;

    return ShervinBdnDevScaffold(
      importedWidgets: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          const SizedBox(height: 30.0),
          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              ShervinBdnDevSimpleText(
                text: 'Constructor',
                color: BdnColors.purple,
                size: 35.0,
                weight: FontWeight.bold,
              ),
              SizedBox(width: 8.0),
              ShervinBdnDevSimpleText(
                text: 'مفهوم',
                color: Colors.white,
                size: 35.0,
                weight: FontWeight.bold,
              ),
            ],
          ),
          const SizedBox(height: 20.0),
          ShervinBdnDevSimpleText(
            text:
                'یا متد سازنده، متدیه که برای ایجاد کردن یا ساختن یه کلاس کاربرد داره ',
            color: Colors.white,
            size: deviceWidth <= BdnConfig.websiteResponsivenessLimit
                ? 15.0
                : 20.0,
            weight: FontWeight.normal,
          ),
          ShervinBdnDevSimpleText(
            text: 'و با هر نمونه گرفتن از کلاس، این متد فراخونی میشه',
            color: Colors.white,
            size: deviceWidth <= BdnConfig.websiteResponsivenessLimit
                ? 15.0
                : 20.0,
            weight: FontWeight.normal,
          ),
          ShervinBdnDevSimpleText(
            text: 'تو زبان پایتون این متد قابل شخصی سازیه ',
            color: Colors.white,
            size: deviceWidth <= BdnConfig.websiteResponsivenessLimit
                ? 15.0
                : 20.0,
            weight: FontWeight.normal,
          ),
          ShervinBdnDevSimpleText(
            text:
                'بطوری که میشه برای نحوه ایجاد شدن یا ساخته شدن کلاس، شرط تعیین کرد ',
            color: Colors.white,
            size: deviceWidth <= BdnConfig.websiteResponsivenessLimit
                ? 15.0
                : 20.0,
            weight: FontWeight.normal,
          ),
          const SizedBox(height: 30.0),
          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              ShervinBdnDevSimpleText(
                text: '__init__',
                color: BdnColors.purple,
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
            text:
                'فرض کنین کلاسی داریم که یک مقدار عددی رو به عنوان ورودی، از کاربر میگیره',
            color: Colors.white,
            size: deviceWidth <= BdnConfig.websiteResponsivenessLimit
                ? 15.0
                : 20.0,
            weight: FontWeight.normal,
          ),
          ShervinBdnDevSimpleText(
            text: 'برای ذخیره سازی این مقدار گرفته شده از کاربر',
            color: Colors.white,
            size: deviceWidth <= BdnConfig.websiteResponsivenessLimit
                ? 15.0
                : 20.0,
            weight: FontWeight.normal,
          ),
          ShervinBdnDevSimpleText(
            text: 'استفاده میکنیم __init__ تو پایتون از متد ',
            color: Colors.white,
            size: deviceWidth <= BdnConfig.websiteResponsivenessLimit
                ? 15.0
                : 20.0,
            weight: FontWeight.normal,
          ),
          ShervinBdnDevSimpleText(
            text: 'و اینکه این متد، کانستراکتور نیست',
            color: Colors.white,
            size: deviceWidth <= BdnConfig.websiteResponsivenessLimit
                ? 15.0
                : 20.0,
            weight: FontWeight.normal,
          ),
          SizedBox(
            width: deviceWidth <= BdnConfig.websiteResponsivenessLimit
                ? 510.0
                : 700.0,
            child: ClipRRect(
              child: Image.asset('assets/pics/post1_1st.png'),
            ),
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              ShervinBdnDevSimpleText(
                text: '__new__',
                color: BdnColors.purple,
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
            text:
                'تو پایتون برای ایجاد یک کلاس، نیاز به استفاده از کانستراکتور نیست',
            color: Colors.white,
            size: deviceWidth <= BdnConfig.websiteResponsivenessLimit
                ? 15.0
                : 20.0,
            weight: FontWeight.normal,
          ),
          ShervinBdnDevSimpleText(
            text:
                'روی هر کلاسی که ما میسازیم اجرا میشه __new__ بصورت پیشفرض متد',
            color: Colors.white,
            size: deviceWidth <= BdnConfig.websiteResponsivenessLimit
                ? 15.0
                : 20.0,
            weight: FontWeight.normal,
          ),
          ShervinBdnDevSimpleText(
            text: 'ولی ما میخوایم که نحوه ایجاد کلاسمون رو شخصی سازی کنیم پس',
            color: Colors.white,
            size: deviceWidth <= BdnConfig.websiteResponsivenessLimit
                ? 15.0
                : 20.0,
            weight: FontWeight.normal,
          ),
          ShervinBdnDevSimpleText(
            text: 'میگیریم و براش شرط میذاریم __init__ مقدار ورودی رو از',
            color: Colors.white,
            size: deviceWidth <= BdnConfig.websiteResponsivenessLimit
                ? 15.0
                : 20.0,
            weight: FontWeight.normal,
          ),
          ShervinBdnDevSimpleText(
            text: 'که اگر مقدار ورودی بعد از مقداردهی، کوچکتر از ۱۸ بود',
            color: Colors.white,
            size: deviceWidth <= BdnConfig.websiteResponsivenessLimit
                ? 15.0
                : 20.0,
            weight: FontWeight.normal,
          ),
          ShervinBdnDevSimpleText(
            text: 'کلاسی ایجاد یا ساخته نشه',
            color: Colors.white,
            size: deviceWidth <= BdnConfig.websiteResponsivenessLimit
                ? 15.0
                : 20.0,
            weight: FontWeight.normal,
          ),
          SizedBox(
            width: deviceWidth <= BdnConfig.websiteResponsivenessLimit
                ? 510.0
                : 700.0,
            child: ClipRRect(
              child: Image.asset('assets/pics/post2_2nd.png'),
            ),
          ),
          const ShervinBdnDevDivider(),
        ],
      ),
    );
  }
}
