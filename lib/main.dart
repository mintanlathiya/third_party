import 'package:flutter/material.dart';
import 'package:third_party/pin_put_demo.dart';
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
    return MaterialApp(
      // //supportedLocales: [Locale('en', 'US')],
      // debugShowCheckedModeBanner: false,
      // home: PinputExample(),
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          title: const Text('Pinput Example'),
          centerTitle: true,
          titleTextStyle: const TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.w600,
            color: Color.fromRGBO(30, 60, 87, 1),
          ),
        ),
        body: const FractionallySizedBox(
          widthFactor: 1,
          child: PinputExample(),
        ),
      ),
    );
  }
}
