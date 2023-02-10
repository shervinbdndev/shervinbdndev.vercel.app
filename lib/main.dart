import 'package:flutter/material.dart';
import 'package:shervinbdndev/views/main_view.dart';
import 'package:shervinbdndev/pages/skills_page.dart';
import 'package:shervinbdndev/pages/projects_page.dart';
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
        '/projects': (context) => const ProjectsPage(),
        '/skills': (context) => const SkillsPage(),
      },
      debugShowCheckedModeBanner: !true,
    );
  }
}
