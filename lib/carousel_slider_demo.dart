import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class CarouseSliderDemoUi extends StatefulWidget {
  const CarouseSliderDemoUi({super.key});

  @override
  State<CarouseSliderDemoUi> createState() => _CarouseSliderDemoUiState();
}

class _CarouseSliderDemoUiState extends State<CarouseSliderDemoUi> {
  final List<String> images = [
    'https://images.unsplash.com/photo-1586882829491-b81178aa622e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2850&q=80',
    'https://images.unsplash.com/photo-1586871608370-4adee64d1794?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2862&q=80',
    'https://images.unsplash.com/photo-1586901533048-0e856dff2c0d?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1650&q=80',
    'https://images.unsplash.com/photo-1586902279476-3244d8d18285?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2850&q=80',
    'https://images.unsplash.com/photo-1586943101559-4cdcf86a6f87?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1556&q=80',
    'https://images.unsplash.com/photo-1586951144438-26d4e072b891?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1650&q=80',
    'https://images.unsplash.com/photo-1586953983027-d7508a64f4bb?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1650&q=80',
    'https://images.unsplash.com/photo-1586882829491-b81178aa622e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2850&q=80',
    'https://images.unsplash.com/photo-1586871608370-4adee64d1794?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2862&q=80',
    'https://images.unsplash.com/photo-1586901533048-0e856dff2c0d?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1650&q=80',
    'https://images.unsplash.com/photo-1586902279476-3244d8d18285?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2850&q=80',
    'https://images.unsplash.com/photo-1586943101559-4cdcf86a6f87?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1556&q=80',
    'https://images.unsplash.com/photo-1586951144438-26d4e072b891?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1650&q=80',
    'https://images.unsplash.com/photo-1586953983027-d7508a64f4bb?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1650&q=80',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          // CarouselSlider(
          //   options: CarouselOptions(height: 400.0),
          //   items: [1, 2, 3, 4, 5].map((i) {
          //     return Builder(
          //       builder: (BuildContext context) {
          //         return Container(
          //             width: MediaQuery.of(context).size.width,
          //             margin: const EdgeInsets.symmetric(horizontal: 5.0),
          //             decoration: const BoxDecoration(color: Colors.amber),
          //             child: Text(
          //               'text $i',
          //               style: const TextStyle(fontSize: 16.0),
          //             ));
          //       },
          //     );
          //   }).toList(),
          // ),
          Container(
              child: CarouselSlider.builder(
            itemCount: images.length,
            options: CarouselOptions(
              autoPlayAnimationDuration: const Duration(seconds: 1),
              reverse: true,
              autoPlay: true,
              aspectRatio: 2.0,
              enlargeCenterPage: true,
            ),
            itemBuilder: (context, index, realIdx) {
              return Container(
                child: Center(
                    child: Image.network(images[index],
                        fit: BoxFit.cover, width: 1000)),
              );
            },
          )),
          // Container(
          //     child: CarouselSlider.builder(
          //   options: CarouselOptions(
          //     aspectRatio: 2.0,
          //     enlargeCenterPage: false,
          //     viewportFraction: 1,
          //   ),
          //   itemCount: (images.length / 2).round(),
          //   itemBuilder: (context, index, realIdx) {
          //     final int first = index * 2;
          //     final int second = first + 1;
          //     return Row(
          //       children: [first, second].map((idx) {
          //         return Expanded(
          //           flex: 1,
          //           child: Container(
          //             margin: const EdgeInsets.symmetric(horizontal: 10),
          //             child: Image.network(images[idx], fit: BoxFit.cover),
          //           ),
          //         );
          //       }).toList(),
          //     );
          //   },
          // )),
        ],
      ),
    );
  }
}
