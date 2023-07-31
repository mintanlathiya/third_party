// import 'package:flutter/material.dart';
// import 'package:just_audio/just_audio.dart';
// import 'package:just_audio_example/common.dart';

// class JustAudioDemoUi extends StatefulWidget {
//   const JustAudioDemoUi({super.key});

//   @override
//   State<JustAudioDemoUi> createState() => _JustAudioDemoUiState();
// }

// class _JustAudioDemoUiState extends State<JustAudioDemoUi> {
//   late AudioPlayer player;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Row(
//         mainAxisSize: MainAxisSize.min,
//         children: [
//           // Opens volume slider dialog
//           IconButton(
//             icon: const Icon(Icons.volume_up),
//             onPressed: () {
//               showSliderDialog(
//                 context: context,
//                 title: "Adjust volume",
//                 divisions: 10,
//                 min: 0.0,
//                 max: 1.0,
//                 value: player.volume,
//                 stream: player.volumeStream,
//                 onChanged: player.setVolume,
//               );
//             },
//           ),

//           StreamBuilder<PlayerState>(
//             stream: player.playerStateStream,
//             builder: (context, snapshot) {
//               final playerState = snapshot.data;
//               final processingState = playerState?.processingState;
//               final playing = playerState?.playing;
//               if (processingState == ProcessingState.loading ||
//                   processingState == ProcessingState.buffering) {
//                 return Container(
//                   margin: const EdgeInsets.all(8.0),
//                   width: 64.0,
//                   height: 64.0,
//                   child: const CircularProgressIndicator(),
//                 );
//               } else if (playing != true) {
//                 return IconButton(
//                   icon: const Icon(Icons.play_arrow),
//                   iconSize: 64.0,
//                   onPressed: player.play,
//                 );
//               } else if (processingState != ProcessingState.completed) {
//                 return IconButton(
//                   icon: const Icon(Icons.pause),
//                   iconSize: 64.0,
//                   onPressed: player.pause,
//                 );
//               } else {
//                 return IconButton(
//                   icon: const Icon(Icons.replay),
//                   iconSize: 64.0,
//                   onPressed: () => player.seek(Duration.zero),
//                 );
//               }
//             },
//           ),
//           // Opens speed slider dialog
//           StreamBuilder<double>(
//             stream: player.speedStream,
//             builder: (context, snapshot) => IconButton(
//               icon: Text("${snapshot.data?.toStringAsFixed(1)}x",
//                   style: const TextStyle(fontWeight: FontWeight.bold)),
//               onPressed: () {
//                 showSliderDialog(
//                   context: context,
//                   title: "Adjust speed",
//                   divisions: 10,
//                   min: 0.5,
//                   max: 1.5,
//                   value: player.speed,
//                   stream: player.speedStream,
//                   onChanged: player.setSpeed,
//                 );
//               },
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }