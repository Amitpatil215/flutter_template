import 'package:flutter/material.dart';
import 'package:flutter_template/app_config.dart';
import 'package:flutter_template/routes/app_router.dart';
import 'package:screen_size_test/screen_size_test.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  final AppRouter appRouter = AppRouter();
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Flutter Template',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      builder: !kEnableScreenSizeTest
          ? (context, child) => ScreenSizeTest(child: child)
          : null,
      routerConfig: appRouter.config(),
    );
  }
}
