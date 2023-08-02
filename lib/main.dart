import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:third_party/flutter_native_splash_demo.dart';

Future<void> main() async {
  //WidgetsFlutterBinding.ensureInitialized();
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);

  //await TextFormFieldShard.init;
  // await CounterShared.init;
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',

      theme: FlexThemeData.light(scheme: FlexScheme.mandyRed),
      //theme: FlexThemeData.light(scheme: FlexScheme.espresso),
      // The Mandy red, dark theme.
      //darkTheme: FlexThemeData.dark(scheme: FlexScheme.mandyRed),
      //darkTheme: FlexThemeData.dark(scheme: FlexScheme.espresso),

      // Use dark or light theme based on system setting.
      //themeMode: ThemeMode.system,

      debugShowCheckedModeBanner: false,
      home: const FlutterNativeSplashDemoUi(

          //title: 'Flutter Demo Home Page',
          ),
      // body: FractionallySizedBox(child: FlutterScreenutilDemoUi())
    );
  }
}
