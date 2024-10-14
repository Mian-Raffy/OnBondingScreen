import 'package:flutter/material.dart';
// ignore: depend_on_referenced_packages
import 'package:provider/provider.dart';
import 'package:slider/packages/package_usage.dart';

import 'package:slider/packages/slider_controller.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => SliderController(),
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: PackageUsage(),
    );
  }
}
