import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:lecle_bubble_timeline/lecle_bubble_timeline.dart';
import 'package:lecle_bubble_timeline/models/timeline_item.dart';
import 'package:meta_seo/meta_seo.dart';
import 'package:shervinbdndev/components/component.dart';
import 'package:shervinbdndev/widgets/shervinbdndev_divider.dart';
import 'package:shervinbdndev/widgets/shervinbdndev_scaffold.dart';
import 'package:shervinbdndev/widgets/shervinbdndev_simpletext.dart';

class SchoolingPage extends StatefulWidget {
  const SchoolingPage({super.key});

  @override
  State<SchoolingPage> createState() => _SchoolingPageState();
}

class _SchoolingPageState extends State<SchoolingPage> {
  @override
  Widget build(BuildContext context) {
    if (kIsWeb) {
      MetaSEO meta = MetaSEO();
      meta.seoAuthor('شروین بدن آرا');
      meta.seoDescription('صفحه تحصیلات');
      meta.seoKeywords('فلاتر, متا, سئو, دارت, وب');
    }

    return const ShervinBdnDevScaffold(
      importedWidgets: Padding(
        padding: EdgeInsets.only(top: 50.0),
        child: Column(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                ShervinBdnDevSimpleText(
                  text: 'من',
                  color: BdnColors.purple,
                  size: 30.0,
                  weight: FontWeight.bold,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 10.0),
                  child: ShervinBdnDevSimpleText(
                    text: 'تحصیلات',
                    color: Colors.white,
                    size: 30.0,
                    weight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            SizedBox(height: 20.0),
            BubbleTimeline(
              stripColor: Colors.white,
              dividerCircleColor: BdnColors.blue,
              bubbleSize: 120.0,
              items: <TimelineItem>[
                TimelineItem(
                  title: '۱۳۹۹-۱۳۹۶',
                  subtitle: 'دیپلم رشته کامپیوتر - نرم افزار',
                  icon: Icon(
                    Icons.school_rounded,
                    color: BdnColors.blue,
                    size: 25.0,
                  ),
                  bubbleColor: BdnColors.purple,
                  description: 'هنرستان فنی و حرفه ای علم و صنعت نوین رشت',
                  titleStyle: TextStyle(
                    fontSize: 25.0,
                    fontFamily: 'ABeeZee',
                    color: BdnColors.purple,
                    fontWeight: FontWeight.bold,
                  ),
                  subtitleStyle: TextStyle(
                    fontSize: 15.0,
                    fontFamily: 'ABeeZee',
                    color: Colors.white,
                    fontWeight: FontWeight.normal,
                  ),
                  descriptionStyle: TextStyle(
                    fontSize: 15.0,
                    fontFamily: 'ABeeZee',
                    color: Colors.white,
                    fontWeight: FontWeight.normal,
                  ),
                ),
                TimelineItem(
                  title: '۱۴۰۲-۱۴۰۰',
                  subtitle: 'فوق دیپلم - در حال تحصیل',
                  icon: Icon(
                    Icons.school_rounded,
                    color: BdnColors.blue,
                    size: 25.0,
                  ),
                  bubbleColor: BdnColors.purple,
                  description:
                      'رشته کامپیوتر - نرم افزار \n دانشکده فنی و حرفه ای شهید چمران رشت',
                  titleStyle: TextStyle(
                    fontSize: 25.0,
                    fontFamily: 'ABeeZee',
                    color: BdnColors.purple,
                    fontWeight: FontWeight.bold,
                  ),
                  subtitleStyle: TextStyle(
                    fontSize: 15.0,
                    fontFamily: 'ABeeZee',
                    color: Colors.white,
                    fontWeight: FontWeight.normal,
                  ),
                  descriptionStyle: TextStyle(
                    fontSize: 15.0,
                    fontFamily: 'ABeeZee',
                    color: Colors.white,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ],
            ),
            ShervinBdnDevDivider(),
          ],
        ),
      ),
    );
  }
}
