import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FlutterScreenutilDemoUi extends StatefulWidget {
  const FlutterScreenutilDemoUi({super.key});

  @override
  State<FlutterScreenutilDemoUi> createState() =>
      _FlutterScreenutilDemoUiState();
}

class _FlutterScreenutilDemoUiState extends State<FlutterScreenutilDemoUi> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
        body: ScreenUtilInit(
      designSize: Size(width, height),
      builder: (context, child) => Container(
        height: height,
        width: width,
        color: Colors.pinkAccent,
        child: Center(
          child: Container(
            height: 0.2.sh,
            width: 1.sw,
            color: Colors.blue,
            child: Center(
              child: Text(
                'ScrrenUtilInit',
                style: TextStyle(fontSize: 0.1.sw),
              ),
            ),
          ),
        ),
      ),
    ));
  }
}
