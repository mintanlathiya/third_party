import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class UrlLaucherDemo extends StatefulWidget {
  const UrlLaucherDemo({super.key});

  @override
  State<UrlLaucherDemo> createState() => _UrlLaucherDemoState();
}

class _UrlLaucherDemoState extends State<UrlLaucherDemo> {
  Uri uri = Uri(scheme: 'tel', path: "99040-12313");
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: MaterialButton(
          onPressed: () async {
            if (await canLaunchUrl(uri)) {
              await launchUrl(uri);
            }
            setState(() {});
          },
          color: Colors.blue,
          child: const Text('Url Launcher'),
        ),
      ),
    );
  }
}
