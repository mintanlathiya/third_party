import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:video_player/video_player.dart';

class PickVideoDemo extends StatefulWidget {
  const PickVideoDemo({super.key});

  @override
  State<PickVideoDemo> createState() => _PickVideoDemoState();
}

class _PickVideoDemoState extends State<PickVideoDemo> {
  File? video;
  VideoPlayerController? videoPlayerController;

  Future<void> pickVideoFromGallery() async {
    ImagePicker galleryVideo = ImagePicker();
    XFile? xFile = await galleryVideo.pickVideo(source: ImageSource.gallery);
    if (xFile != null) {
      video = File(xFile.path);
      videoPlayerController = VideoPlayerController.file(video!)
        ..initialize().then((value) {
          videoPlayerController!.play();
          videoPlayerController!.setLooping(true);
          setState(() {});
        });
    }
  }

  Future<void> pickVideoFromCamera() async {
    ImagePicker cameraVideo = ImagePicker();
    XFile? xFile = await cameraVideo.pickVideo(
        source: ImageSource.camera,
        maxDuration: const Duration(seconds: 60),
        preferredCameraDevice: CameraDevice.rear);
    if (xFile != null) {
      video = File(xFile.path);
      videoPlayerController = VideoPlayerController.file(video!)
        ..initialize().then((value) {
          videoPlayerController!.play();
          videoPlayerController!.setLooping(true);
          setState(() {});
        });
    }
  }

  @override
  void dispose() {
    videoPlayerController!.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              video == null
                  ? const SizedBox(
                      height: 400,
                      width: 300,
                      child: Placeholder(),
                    )
                  : ConstrainedBox(
                      constraints:
                          const BoxConstraints(maxHeight: 400, maxWidth: 300),
                      child: GestureDetector(
                        onTap: () {
                          videoPlayerController!.value.isPlaying
                              ? videoPlayerController!.pause()
                              : videoPlayerController!.play();
                          setState(() {});
                        },
                        child: AspectRatio(
                          aspectRatio: videoPlayerController!.value.aspectRatio,
                          child: VideoPlayer(videoPlayerController!),
                        ),
                      ),
                    ),
              const SizedBox(
                height: 10,
              ),
              ElevatedButton.icon(
                onPressed: () {
                  pickVideoFromGallery();
                  setState(() {});
                },
                style: ButtonStyle(
                    minimumSize: const MaterialStatePropertyAll(Size(220, 50)),
                    shape: MaterialStatePropertyAll(
                      RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                    ),
                    backgroundColor:
                        const MaterialStatePropertyAll(Colors.amber)),
                icon: const Icon(Icons.video_camera_back_outlined),
                label: const Text('Pick Video From Gallay'),
              ),
              const SizedBox(
                height: 10,
              ),
              ElevatedButton.icon(
                onPressed: () {
                  pickVideoFromCamera();
                  setState(() {});
                },
                style: ButtonStyle(
                    minimumSize: const MaterialStatePropertyAll(Size(220, 50)),
                    shape: MaterialStatePropertyAll(
                      RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                    ),
                    backgroundColor:
                        const MaterialStatePropertyAll(Colors.amber)),
                icon: const Icon(Icons.video_camera_front_outlined),
                label: const Text('Pick Video From camera'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
