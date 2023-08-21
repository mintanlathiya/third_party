import 'package:flutter/material.dart';
import 'package:third_party/shared_demo/counter_shared.dart';

import 'shared_demo/shared_prefrences_demo.dart';

Future<void> main() async {
  //WidgetsFlutterBinding.ensureInitialized();
  // WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  // FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);

  //await TextFormFieldShard.init;
  await CounterShared.init;
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
      home: SharedDemo(

          //title: 'Flutter Demo Home Page',p
          ),
      // getPages: [
      //   GetPage(name: '/', page: () => const HomeScreen()),
      //   GetPage(name: '/song', page: () => const SongScreen()),
      //   GetPage(name: '/playlist', page: () => const PlaylistScreen()),
      // ],
      // body: FractionallySizedBox(child: FlutterScreenutilDemoUi())
    );
  }
}
