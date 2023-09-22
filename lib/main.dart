import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:screen_size_test/screen_size_test.dart';

import 'app_config.dart';
import 'routes/app_router.dart';
import 'view_models.dart/provider_list.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  final AppRouter appRouter = AppRouter();
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: providerList,
      child: MaterialApp.router(
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
      ),
    );
  }

}
