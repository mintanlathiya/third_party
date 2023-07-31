import 'package:flutter/material.dart';
import 'package:third_party/flutter_rating_demo.dart';
import 'package:third_party/shared_demo/textformfield_shared.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await TextFormFieldShard.init;
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
      home: RatingDemoUi(

          //title: 'Flutter Demo Home Page',
          ),
      // body: FractionallySizedBox(child: FlutterScreenutilDemoUi())
    );
  }
}
