import 'package:flutter/material.dart';
import 'package:meta_seo/meta_seo.dart';
import 'package:flutter/foundation.dart';
import 'package:shervinbdndev/components/component.dart';
import 'package:number_pagination/number_pagination.dart';
import 'package:shervinbdndev/fragments/shervinbdndev_scaffold.dart';
import 'package:shervinbdndev/fragments/widgets/texts/shervinbdndev_simpletext.dart';
import 'package:shervinbdndev/fragments/projects/mobile/shervinbdndev_mobiletabview.dart';
import 'package:shervinbdndev/fragments/projects/mobile/shervinbdndev_mobiletabview2.dart';
import 'package:shervinbdndev/fragments/widgets/dividers/shervinbdndev_horizantaldivider.dart';
import 'package:shervinbdndev/fragments/projects/desktop/shervinbdndev_desktopprojectsview.dart';
import 'package:shervinbdndev/fragments/projects/desktop/shervinbdndev_desktopprojectsview2.dart';

class ProjectsPage extends StatefulWidget {
  const ProjectsPage({super.key});

  @override
  State<ProjectsPage> createState() => _ProjectsPageState();
}

class _ProjectsPageState extends State<ProjectsPage> {
  var selectedPageNumber = 1;

  @override
  Widget build(BuildContext context) {
    if (kIsWeb) {
      MetaSEO meta = MetaSEO();
      meta.author(author: 'شروین بدن آرا');
      meta.description(description: 'صفحه پروژه ها');
      meta.keywords(keywords: 'فلاتر, متا, سئو, دارت, وب');
    }

    var deviceWidth = MediaQuery.of(context).size.width;

    return ShervinBdnDevScaffold(
      importedWidgets: Column(
        children: <Widget>[
          const Padding(
            padding: EdgeInsets.only(
              top: 50.0,
            ),
            child: Column(
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    ShervinBdnDevSimpleText(
                      text: 'من',
                      color: BdnColors.purple,
                      size: 30.0,
                      family: BdnConfig.websitePersianFontFamily,
                      weight: FontWeight.bold,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 10.0),
                      child: ShervinBdnDevSimpleText(
                        text: 'پروژه های',
                        color: Colors.white,
                        size: 30.0,
                        family: BdnConfig.websitePersianFontFamily,
                        weight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 30.0),
            child: Column(
              children: <Widget>[
                selectedPageNumber == 1
                    ? Column(
                        children: <Widget>[
                          deviceWidth <= BdnConfig.websiteResponsivenessLimit
                              ? const ShervinBdnDevMobileTabletView()
                              : const ShervinBdnDevDesktopProjectsView(),
                        ],
                      )
                    : Column(
                        children: <Widget>[
                          deviceWidth <= BdnConfig.websiteResponsivenessLimit
                              ? const ShervinBdnDevMobileTabletView2()
                              : const ShervinBdnDevDesktopProjectsView2(),
                        ],
                      ),
                const SizedBox(height: 25.0),
                NumberPagination(
                  onPageChanged: (int pageNumber) {
                    setState(
                      () {
                        selectedPageNumber = pageNumber;
                      },
                    );
                  },
                  pageTotal: 2,
                  pageInit: selectedPageNumber,
                  colorSub: BdnColors.blue,
                  colorPrimary: BdnColors.purple,
                ),
              ],
            ),
          ),
          const ShervinBdnDevHorizantalDivider(),
        ],
      ),
    );
  }
}
