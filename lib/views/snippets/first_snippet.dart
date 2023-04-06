import 'package:flutter/material.dart';
import 'package:meta_seo/meta_seo.dart';
import 'package:flutter/foundation.dart';
import 'package:shervinbdndev/components/component.dart';
import 'package:any_syntax_highlighter/any_syntax_highlighter.dart';
import 'package:shervinbdndev/fragments/shervinbdndev_scaffold.dart';
import 'package:shervinbdndev/fragments/widgets/texts/shervinbdndev_simpletext.dart';

class FirstSnippet extends StatefulWidget {
  const FirstSnippet({super.key});

  @override
  State<FirstSnippet> createState() => _FirstSnippetState();
}

class _FirstSnippetState extends State<FirstSnippet> {
  @override
  Widget build(BuildContext context) {
    if (kIsWeb) {
      MetaSEO meta = MetaSEO();
      meta.author(author: 'شروین بدن آرا');
      meta.description(description: 'قطعه کد اول');
      meta.keywords(keywords: 'فلاتر, متا, سئو, دارت, وب');
    }

    var importText = '''import requests''';

    var deviceWidth = MediaQuery.of(context).size.width;

    return ShervinBdnDevScaffold(
      importedWidgets: Column(
        children: <Widget>[
          const SizedBox(height: 60.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              ShervinBdnDevSimpleText(
                text: 'ایمپورت کردن ماژول',
                color: Colors.white,
                size: deviceWidth <= BdnConfig.websiteResponsivenessLimit
                    ? 28.0
                    : 33.0,
                family: BdnConfig.websitePersianFontFamily,
                weight: FontWeight.bold,
              ),
              const SizedBox(width: 10.0),
              ShervinBdnDevSimpleText(
                text: ':',
                color: BdnColors.purple,
                size: deviceWidth <= BdnConfig.websiteResponsivenessLimit
                    ? 28.0
                    : 33.0,
                family: BdnConfig.websitePersianFontFamily,
                weight: FontWeight.bold,
              ),
              ShervinBdnDevSimpleText(
                text: 'مرحله اول',
                color: BdnColors.purple,
                size: deviceWidth <= BdnConfig.websiteResponsivenessLimit
                    ? 28.0
                    : 33.0,
                family: BdnConfig.websitePersianFontFamily,
                weight: FontWeight.bold,
              ),
            ],
          ),
          const SizedBox(height: 15.0),
          ShervinBdnDevSimpleText(
            text:
                'برای ارسال درخواست سمت سرور مورد نظر استفاده میکنیم requests از ماژول',
            color: Colors.white,
            size: deviceWidth <= BdnConfig.websiteResponsivenessLimit
                ? 13.0
                : 20.0,
            weight: FontWeight.normal,
            family: BdnConfig.websitePersianFontFamily,
          ),
          const SizedBox(height: 15.0),
          SizedBox(
            width: deviceWidth <= BdnConfig.websiteResponsivenessLimit
                ? 410.0
                : 480.0,
            height: deviceWidth <= BdnConfig.websiteResponsivenessLimit
                ? 50.0
                : 60.0,
            child: AnySyntaxHighlighter(
              importText,
              useGoogleFont: BdnConfig.websiteEnglishFontFamily,
              hasCopyButton: true,
              lineNumbers: true,
              isSelectableText: true,
              fontSize: 14.0,
              overrideDecoration: BoxDecoration(
                color: BdnColors.secondaryPurple,
                borderRadius: BorderRadius.circular(3.0),
              ),
              copyIcon: const Icon(
                Icons.copy_rounded,
                color: Colors.white,
              ),
            ),
          ),
          const SizedBox(height: 60.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              ShervinBdnDevSimpleText(
                text: 'Get',
                color: Colors.white,
                size: deviceWidth <= BdnConfig.websiteResponsivenessLimit
                    ? 28.0
                    : 33.0,
                family: BdnConfig.websitePersianFontFamily,
                weight: FontWeight.bold,
              ),
              ShervinBdnDevSimpleText(
                text: ' درخواست از نوع',
                color: Colors.white,
                size: deviceWidth <= BdnConfig.websiteResponsivenessLimit
                    ? 28.0
                    : 33.0,
                family: BdnConfig.websitePersianFontFamily,
                weight: FontWeight.bold,
              ),
              const SizedBox(width: 10.0),
              ShervinBdnDevSimpleText(
                text: ':',
                color: BdnColors.purple,
                size: deviceWidth <= BdnConfig.websiteResponsivenessLimit
                    ? 28.0
                    : 33.0,
                family: BdnConfig.websitePersianFontFamily,
                weight: FontWeight.bold,
              ),
              ShervinBdnDevSimpleText(
                text: 'مرحله دوم',
                color: BdnColors.purple,
                size: deviceWidth <= BdnConfig.websiteResponsivenessLimit
                    ? 28.0
                    : 33.0,
                family: BdnConfig.websitePersianFontFamily,
                weight: FontWeight.bold,
              ),
            ],
          ),
          const SizedBox(height: 15.0),
          ShervinBdnDevSimpleText(
            text:
                'سمت آدرس مورد نظر ارسال میکنیم get از نوع https درخواستی تحت پروتکل',
            color: Colors.white,
            size: deviceWidth <= BdnConfig.websiteResponsivenessLimit
                ? 13.0
                : 20.0,
            weight: FontWeight.normal,
            family: BdnConfig.websitePersianFontFamily,
          ),
          ShervinBdnDevSimpleText(
            text: 'ذخیره میکنیم req و خروجی رو تو متغیری به نام',
            color: Colors.white,
            size: deviceWidth <= BdnConfig.websiteResponsivenessLimit
                ? 13.0
                : 20.0,
            weight: FontWeight.normal,
            family: BdnConfig.websitePersianFontFamily,
          ),
          ShervinBdnDevSimpleText(
            text:
                'یادمون باشه که بعد از ارسال درخواست باید دیتای دریافت شده رو ',
            color: Colors.white,
            size: deviceWidth <= BdnConfig.websiteResponsivenessLimit
                ? 13.0
                : 20.0,
            weight: FontWeight.normal,
            family: BdnConfig.websitePersianFontFamily,
          ),
          ShervinBdnDevSimpleText(
            text: 'رو فراخونی میکنیم json() کنیم پس در آخر، متد json تبدیل به',
            color: Colors.white,
            size: deviceWidth <= BdnConfig.websiteResponsivenessLimit
                ? 13.0
                : 20.0,
            weight: FontWeight.normal,
            family: BdnConfig.websitePersianFontFamily,
          ),
          const SizedBox(height: 15.0),
          SizedBox(
            width: deviceWidth <= BdnConfig.websiteResponsivenessLimit
                ? 410.0
                : 480.0,
            height: deviceWidth <= BdnConfig.websiteResponsivenessLimit
                ? 60.0
                : 70.0,
            child: AnySyntaxHighlighter(
              '$importText\nreq = requests.get(url="https://api.myip.com").json()',
              useGoogleFont: BdnConfig.websiteEnglishFontFamily,
              overrideDecoration: BoxDecoration(
                color: BdnColors.secondaryPurple,
                borderRadius: BorderRadius.circular(3.0),
              ),
              hasCopyButton: true,
              lineNumbers: true,
              isSelectableText: true,
              fontSize: 14.0,
              copyIcon: const Icon(
                Icons.copy_rounded,
                color: Colors.white,
              ),
            ),
          ),
          const SizedBox(height: 60.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              ShervinBdnDevSimpleText(
                text: 'نمایش در خروجی',
                color: Colors.white,
                size: deviceWidth <= BdnConfig.websiteResponsivenessLimit
                    ? 28.0
                    : 33.0,
                family: BdnConfig.websitePersianFontFamily,
                weight: FontWeight.bold,
              ),
              const SizedBox(width: 10.0),
              ShervinBdnDevSimpleText(
                text: ':',
                color: BdnColors.purple,
                size: deviceWidth <= BdnConfig.websiteResponsivenessLimit
                    ? 28.0
                    : 33.0,
                family: BdnConfig.websitePersianFontFamily,
                weight: FontWeight.bold,
              ),
              ShervinBdnDevSimpleText(
                text: 'مرحله سوم',
                color: BdnColors.purple,
                size: deviceWidth <= BdnConfig.websiteResponsivenessLimit
                    ? 28.0
                    : 33.0,
                family: BdnConfig.websitePersianFontFamily,
                weight: FontWeight.bold,
              ),
            ],
          ),
          const SizedBox(height: 15.0),
          ShervinBdnDevSimpleText(
            text:
                'یی که برامون فرستاده شده json رو از دیتای نوع ip در نهایت هم کلید ',
            color: Colors.white,
            size: deviceWidth <= BdnConfig.websiteResponsivenessLimit
                ? 13.0
                : 20.0,
            weight: FontWeight.normal,
            family: BdnConfig.websitePersianFontFamily,
          ),
          ShervinBdnDevSimpleText(
            text:
                'در محیط کنسول نمایشش میدیم print انتخاب میکنیم و با استفاده از متد',
            color: Colors.white,
            size: deviceWidth <= BdnConfig.websiteResponsivenessLimit
                ? 13.0
                : 20.0,
            weight: FontWeight.normal,
            family: BdnConfig.websitePersianFontFamily,
          ),
          const SizedBox(height: 15.0),
          SizedBox(
            width: deviceWidth <= BdnConfig.websiteResponsivenessLimit
                ? 410.0
                : 480.0,
            height: deviceWidth <= BdnConfig.websiteResponsivenessLimit
                ? 70.0
                : 80.0,
            child: AnySyntaxHighlighter(
              '$importText\nreq = requests.get(url="https://api.myip.com").json()\nprint(req["ip"])',
              useGoogleFont: BdnConfig.websiteEnglishFontFamily,
              overrideDecoration: BoxDecoration(
                color: BdnColors.secondaryPurple,
                borderRadius: BorderRadius.circular(3.0),
              ),
              hasCopyButton: true,
              lineNumbers: true,
              isSelectableText: true,
              fontSize: 14.0,
              copyIcon: const Icon(
                Icons.copy_rounded,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
