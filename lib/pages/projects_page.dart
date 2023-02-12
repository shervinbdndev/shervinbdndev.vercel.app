import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:meta_seo/meta_seo.dart';
import 'package:shervinbdndev/components/component.dart';
import 'package:number_pagination/number_pagination.dart';
import 'package:shervinbdndev/fragments/shervinbdndev_divider.dart';
import 'package:shervinbdndev/fragments/shervinbdndev_scaffold.dart';
import 'package:shervinbdndev/fragments/shervinbdndev_simpletext.dart';
import 'package:shervinbdndev/fragments/shervinbdndev_mobiletabview.dart';
import 'package:shervinbdndev/fragments/shervinbdndev_mobiletabview2.dart';
import 'package:shervinbdndev/fragments/shervinbdndev_desktopprojectsview.dart';
import 'package:shervinbdndev/fragments/shervinbdndev_desktopprojectsview2.dart';

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
      meta.seoAuthor('شروین بدن آرا');
      meta.seoDescription('صفحه پروژه ها');
      meta.seoKeywords('فلاتر, متا, سئو, دارت, وب');
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
                      weight: FontWeight.bold,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 10.0),
                      child: ShervinBdnDevSimpleText(
                        text: 'پروژه های',
                        color: Colors.white,
                        size: 30.0,
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
          const ShervinBdnDevDivider(),
        ],
      ),
    );
  }
}
