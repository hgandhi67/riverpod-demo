import 'package:demo_task/pages/home/home_screen.dart';
import 'package:demo_task/utils/dimens.dart';
import 'package:demo_task/utils/strings.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() {
  runApp(const ProviderScope(child: DemoApp()));
}

class DemoApp extends StatelessWidget {
  const DemoApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: Strings.appNameString,
      home: Builder(builder: (rootContext) {
        Dimens.setDimens(rootContext);
        return const HomeScreen();
      },),
    );
  }
}
