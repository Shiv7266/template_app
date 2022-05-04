import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:stacked_services/stacked_services.dart';
import 'package:template_app/utils/size_config.dart';

import 'app/app.locator.dart';
import 'app/app.router.dart';

Future main() async {
  //Initializing Widgets Binding
  WidgetsFlutterBinding.ensureInitialized();

  // Setting up locator
  setupLocator();

  //Transparent status bar across app
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    statusBarColor: Colors.transparent,
  ));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return OrientationBuilder(builder: (context, orientation) {
        SizeConfig().init(constraints, orientation);
        return MaterialApp(
          title: '',
          debugShowCheckedModeBanner: false,
          navigatorKey: StackedService.navigatorKey,
          onGenerateRoute: StackedRouter().onGenerateRoute,
        );
      });
    });
  }
}
