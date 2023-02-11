import 'package:flutter/material.dart';
import 'package:shervinbdndev/views/main_view.dart';
import 'package:shervinbdndev/posts/first_post.dart';
import 'package:shervinbdndev/pages/skills_page.dart';
import 'package:shervinbdndev/pages/projects_page.dart';
import 'package:shervinbdndev/pages/schooling_page.dart';
import 'package:shervinbdndev/pages/certificates_page.dart';
import 'package:shervinbdndev/pages/bloglistview_page.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'shervinbdndev',
      initialRoute: '/',
      routes: {
        '/': (context) => const ShervinBdnDevMainView(),
        '/blog': (context) => const BlogListViewPage(),
        '/blog/constructors-in-python': (context) => const FirstPost(),
        '/projects': (context) => const ProjectsPage(),
        '/skills': (context) => const SkillsPage(),
        '/schooling': (context) => const SchoolingPage(),
        '/certificates': (context) => const CertificatesPage(),
      },
      debugShowCheckedModeBanner: !true,
    );
  }
}
