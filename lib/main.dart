import 'package:flutter/material.dart';
import 'package:third_party/connectivity_plus_demo.dart';
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
      debugShowCheckedModeBanner: false,
      home: ConnectivityPlusDemoUi(
        title: 'Flutter Demo Home Page',
      ),
      // body: FractionallySizedBox(child: FlutterScreenutilDemoUi())
    );
  }
}
