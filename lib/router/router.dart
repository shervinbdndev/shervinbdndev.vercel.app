import 'package:flutter/material.dart';

void bdnPop(BuildContext context) {
  return Navigator.pop(context);
}

Future<dynamic> bdnRouter(BuildContext context, String route) {
  return Navigator.pushNamed(context, route);
}
