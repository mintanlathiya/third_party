import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class UrlLaucherDemo extends StatefulWidget {
  const UrlLaucherDemo({super.key});

  @override
  State<UrlLaucherDemo> createState() => _UrlLaucherDemoState();
}

class _UrlLaucherDemoState extends State<UrlLaucherDemo> {
  static String? encodeQueryParameters(Map<String, String> params) {
    return params.entries
        .map((MapEntry<String, String> e) =>
            '${Uri.encodeComponent(e.key)}=${Uri.encodeComponent(e.value)}')
        .join('&');
  }

  //Uri uri = Uri(scheme: 'tel', path: "99040-12313");

  // Uri uri =
  //     Uri.parse('https://www.youtube.com/channel/UCLFuLa74npHnqaJlaSN_eWA');
  Uri emailLanunchUri = Uri(
    scheme: 'mailto',
    path: 'mintan@gmail.com',
    query: encodeQueryParameters(<String, String>{
      'subject': 'Example Subject & Symbols are allowed!',
    }),
  );

  // Uri smsLaunchUri = Uri(
  //   scheme: 'sms',
  //   path: '+91 7575830739',
  //   queryParameters: <String, String>{
  //     'body': Uri.encodeComponent(
  //         'https://www.youtube.com/channel/UCLFuLa74npHnqaJlaSN_eWA'),
  //   },
  // );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: MaterialButton(
          onPressed: () async {
            if (await canLaunchUrl(emailLanunchUri)) {
              await launchUrl(emailLanunchUri);
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
