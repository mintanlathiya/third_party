import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class FlutterSvgImageDemo extends StatefulWidget {
  const FlutterSvgImageDemo({super.key});

  @override
  State<FlutterSvgImageDemo> createState() => _FlutterSvgImageDemoState();
}

class _FlutterSvgImageDemoState extends State<FlutterSvgImageDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Container(
              height: 200,
              width: 200,
              decoration: const BoxDecoration(
                  color: Colors.red,
                  image: DecorationImage(
                    image: NetworkImage(
                        'https://images-eu.ssl-images-amazon.com/images/G/31/img22/Wearables/PC_CategoryCard_379X304_1._SY304_CB614835787_.jpg'),
                  )),
            ),
            const SizedBox(
              height: 5,
            ),
            SizedBox(
                height: 500,
                child: SvgPicture.asset('assets/svg_images/3.svg')),
          ],
        ),
      ),
    );
  }
}
