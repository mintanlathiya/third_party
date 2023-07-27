import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class GoogleFontDemo extends StatefulWidget {
  const GoogleFontDemo({super.key});

  @override
  State<GoogleFontDemo> createState() => _GoogleFontDemoState();
}

class _GoogleFontDemoState extends State<GoogleFontDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          'Google Font',
          // style: GoogleFonts.lato(
          //   textStyle: const TextStyle(color: Colors.blue, letterSpacing: .5),
          // ),
          style: GoogleFonts.lato(
            textStyle: Theme.of(context).textTheme.headlineSmall,
            fontSize: 48,
            fontWeight: FontWeight.w700,
            fontStyle: FontStyle.italic,
          ),
        ),
      ),
    );
  }
}
