import 'package:flutter/material.dart';
import 'package:third_party/convex_bottom_bar_demo.dart';
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
      //  supportedLocales: [Locale('en','US'),],

      debugShowCheckedModeBanner: false,
      home: ConvexBottombarDemoUi(),
    );
  }
}