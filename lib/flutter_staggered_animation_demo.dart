import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';

class FlutterStaggeredAnimationDemoUi extends StatefulWidget {
  const FlutterStaggeredAnimationDemoUi({super.key});

  @override
  State<FlutterStaggeredAnimationDemoUi> createState() =>
      _FlutterStaggeredAnimationDemoUiState();
}

class _FlutterStaggeredAnimationDemoUiState
    extends State<FlutterStaggeredAnimationDemoUi> {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

    return Scaffold(
      // body: SizedBox(
      //   height: double.infinity,
      //   width: double.infinity,
      //   child: Column(
      //     mainAxisAlignment: MainAxisAlignment.center,
      //     children: <Widget>[
      //       ElevatedButton(
      //         child: const Text('List Card Test'),
      //         onPressed: () {
      //           Navigator.push(
      //             context,
      //             MaterialPageRoute(builder: (context) => CardListScreen()),
      //           );
      //         },
      //       ),
      //       ElevatedButton(
      //         child: const Text('Grid Card Test'),
      //         onPressed: () {
      //           Navigator.push(
      //             context,
      //             MaterialPageRoute(builder: (context) => CardGridScreen()),
      //           );
      //         },
      //       ),
      //       ElevatedButton(
      //         child: const Text('Column Card Test'),
      //         onPressed: () {
      //           Navigator.push(
      //             context,
      //             MaterialPageRoute(builder: (context) => CardColumnScreen()),
      //           );
      //         },
      //       ),
      //     ],
      //   ),
      // ),
      // body: AnimationLimiter(
      //   child: ListView.builder(
      //     itemCount: 2,
      //     itemBuilder: (BuildContext context, int index) {
      //       return AnimationConfiguration.staggeredList(
      //         position: index,
      //         duration: const Duration(milliseconds: 375),
      //         child: const SlideAnimation(
      //           verticalOffset: 50.0,
      //           child: FadeInAnimation(
      //             child: FlutterLogo(
      //               size: 300,
      //             ),
      //           ),
      //         ),
      //       );
      //     },
      //   ),
      // ),
      body: Column(
        children: [
          AnimationLimiter(
              child: Expanded(
            child: GridView.builder(
              itemCount: 3,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                mainAxisSpacing: 3,
                crossAxisSpacing: 3,
              ),
              itemBuilder: (context, index) {
                return AnimationConfiguration.staggeredGrid(
                  duration: const Duration(milliseconds: 500),
                  position: index,
                  columnCount: 3,
                  child: FadeInAnimation(
                      //horizontalOffset: width + 1.5,
                      // verticalOffset: height + 1.2,
                      curve: Curves.easeIn,
                      child: Container(
                        height: 200,
                        width: 200,
                        alignment: Alignment.center,
                        color: Colors.deepPurpleAccent,
                        child: Text(
                          'Animated ${index + 1}',
                          style: const TextStyle(
                              fontWeight: FontWeight.bold, color: Colors.white),
                        ),
                      )),
                );
              },
            ),
          )),
          AnimationLimiter(
              child: Expanded(
            child: GridView.builder(
              itemCount: 3,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                mainAxisSpacing: 3,
                crossAxisSpacing: 3,
              ),
              itemBuilder: (context, index) {
                return AnimationConfiguration.staggeredGrid(
                  duration: const Duration(milliseconds: 500),
                  position: index,
                  columnCount: 3,
                  child: SlideAnimation(
                      horizontalOffset: width + 1.5,
                      verticalOffset: height + 1.2,
                      curve: Curves.easeIn,
                      child: Container(
                        height: 200,
                        width: 200,
                        alignment: Alignment.center,
                        color: Colors.deepPurpleAccent,
                        child: Text(
                          'Animated ${index + 1}',
                          style: const TextStyle(
                              fontWeight: FontWeight.bold, color: Colors.white),
                        ),
                      )),
                );
              },
            ),
          )),
          AnimationLimiter(
              child: Expanded(
            child: GridView.builder(
              itemCount: 3,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                mainAxisSpacing: 3,
                crossAxisSpacing: 3,
              ),
              itemBuilder: (context, index) {
                return AnimationConfiguration.staggeredGrid(
                  duration: const Duration(milliseconds: 500),
                  position: index,
                  columnCount: 3,
                  child: SlideAnimation(
                      horizontalOffset: width + 1.5,
                      //verticalOffset: height + 1.2,
                      curve: Curves.easeIn,
                      child: Container(
                        height: 200,
                        width: 200,
                        alignment: Alignment.center,
                        color: Colors.deepPurpleAccent,
                        child: Text(
                          'Animated ${index + 1}',
                          style: const TextStyle(
                              fontWeight: FontWeight.bold, color: Colors.white),
                        ),
                      )),
                );
              },
            ),
          )),
          AnimationLimiter(
              child: Expanded(
            child: GridView.builder(
              itemCount: 3,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                mainAxisSpacing: 3,
                crossAxisSpacing: 3,
              ),
              itemBuilder: (context, index) {
                return AnimationConfiguration.staggeredGrid(
                  duration: const Duration(milliseconds: 500),
                  position: index,
                  columnCount: 3,
                  child: ScaleAnimation(
                      //horizontalOffset: width + 1.5,
                      //verticalOffset: height + 1.2,
                      curve: Curves.easeIn,
                      child: Container(
                        height: 200,
                        width: 200,
                        alignment: Alignment.center,
                        color: Colors.deepPurpleAccent,
                        child: Text(
                          'Animated ${index + 1}',
                          style: const TextStyle(
                              fontWeight: FontWeight.bold, color: Colors.white),
                        ),
                      )),
                );
              },
            ),
          )),
          AnimationLimiter(
              child: Expanded(
            child: GridView.builder(
              itemCount: 3,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                mainAxisSpacing: 3,
                crossAxisSpacing: 3,
              ),
              itemBuilder: (context, index) {
                return AnimationConfiguration.staggeredGrid(
                  duration: const Duration(milliseconds: 500),
                  position: index,
                  columnCount: 3,
                  child: FlipAnimation(
                      //horizontalOffset: width + 1.5,
                      //verticalOffset: height + 1.2,
                      curve: Curves.easeIn,
                      child: Container(
                        height: 200,
                        width: 200,
                        alignment: Alignment.center,
                        color: Colors.deepPurpleAccent,
                        child: Text(
                          'Animated ${index + 1}',
                          style: const TextStyle(
                              fontWeight: FontWeight.bold, color: Colors.white),
                        ),
                      )),
                );
              },
            ),
          )),
        ],
      ),
    );
  }
}
