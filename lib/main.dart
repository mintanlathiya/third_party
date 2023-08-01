import 'package:flutter/material.dart';
import 'package:third_party/webview_flutter_demo.dart';

Future<void> main() async {
  //WidgetsFlutterBinding.ensureInitialized();
  // WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  // FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);

  //await TextFormFieldShard.init;
  // await CounterShared.init;
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Flutter Demo',

      //theme: FlexThemeData.light(scheme: FlexScheme.mandyRed),
      //theme: FlexThemeData.light(scheme: FlexScheme.espresso),
      // The Mandy red, dark theme.
      //darkTheme: FlexThemeData.dark(scheme: FlexScheme.mandyRed),
      //darkTheme: FlexThemeData.dark(scheme: FlexScheme.espresso),

      // Use dark or light theme based on system setting.
      //themeMode: ThemeMode.system,

      debugShowCheckedModeBanner: false,
      home: WebViewFlutterDemoui(

          //title: 'Flutter Demo Home Page',
          ),
      // body: FractionallySizedBox(child: FlutterScreenutilDemoUi())
    );
  }
}
