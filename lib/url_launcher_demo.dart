// import 'package:flutter/material.dart';
// import 'package:url_launcher/url_launcher.dart';

// class UrlLauncherDemoUi extends StatefulWidget {
//   const UrlLauncherDemoUi({super.key});

//   @override
//   State<UrlLauncherDemoUi> createState() => _UrlLauncherDemoUiState();
// }

// class _UrlLauncherDemoUiState extends State<UrlLauncherDemoUi> {
//   final Uri _url = Uri.parse('https://flutter.dev');
//   Future<void> _launchUrl() async {
//     if (!await launchUrl(_url)) {
//       throw Exception('Could not launch $_url');
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         body: Center(
//       child: ElevatedButton(
//         onPressed: _launchUrl,
//         child: const Text('Show Flutter homepage'),
//       ),
//     ));
//   }
// }
