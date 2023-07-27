import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class RatingDemoUi extends StatefulWidget {
  const RatingDemoUi({super.key});

  @override
  State<RatingDemoUi> createState() => _RatingDemoUiState();
}

class _RatingDemoUiState extends State<RatingDemoUi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            RatingBar(
              minRating: 1,
              maxRating: 5,
              initialRating: 3,
              allowHalfRating: true,
              //itemCount: 8,
              itemSize: 48,
              itemPadding: const EdgeInsets.symmetric(horizontal: 4),
              //direction: Axis.vertical,
              glowRadius: 5,
              glowColor: Colors.lightGreen,
              glow: false,
              //tapOnlyMode: true,
              //ignoreGestures: true,
              ratingWidget: RatingWidget(
                full: const Icon(
                  Icons.star,
                  color: Colors.amber,
                ),
                half: const Icon(
                  Icons.star,
                  color: Colors.grey,
                ),
                empty: const Icon(
                  Icons.star,
                  color: Colors.grey,
                ),
              ),
              onRatingUpdate: (value) {},
            ),
          ],
        ),
      ),
    );
  }
}
