import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class FontAwesomeFlutterDemoUi extends StatefulWidget {
  const FontAwesomeFlutterDemoUi({super.key});

  @override
  State<FontAwesomeFlutterDemoUi> createState() =>
      _FontAwesomeFlutterDemoUiState();
}

class _FontAwesomeFlutterDemoUiState extends State<FontAwesomeFlutterDemoUi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: const Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.play_circle_outline,
              size: 50,
              color: Colors.orange,
            ),
            SizedBox(
              width: 10,
            ),
            FaIcon(
              FontAwesomeIcons.amazonPay,
              //color: Colors.orange,
              size: 50,
            )
          ],
        ),
      ),
    );
  }
}
