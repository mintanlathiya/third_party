import 'dart:io';

import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:image_picker/image_picker.dart';
import 'package:path_provider/path_provider.dart';
import 'package:share_plus/share_plus.dart';

class SharePlusDemoUi extends StatefulWidget {
  const SharePlusDemoUi({super.key});

  @override
  State<SharePlusDemoUi> createState() => _SharePlusDemoUiState();
}

class _SharePlusDemoUiState extends State<SharePlusDemoUi> {
  final TextEditingController _txtEditingController = TextEditingController();
  File? file;
  urlImage() async {
    try {
      final uri = Uri.parse(imageurl);
      final response = await http.get(uri);
      final bytes = response.bodyBytes;

      final temp = await getTemporaryDirectory();
      final path = '${temp.path}/image.jpg';
      File(path).writeAsBytesSync(bytes);
      await Share.shareXFiles(
        [XFile(path)],
      );
    } on SocketException catch (e) {
      print(e);
    }
  }

  final imageurl =
      'https://images-eu.ssl-images-amazon.com/images/G/31/Gateway/Events/2018/JupiterFallBack/Jupiter_bau_PC_top_card_fashion_1x._SY304_CB484150077_.jpg';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: _txtEditingController,
                decoration: const InputDecoration(
                    border: OutlineInputBorder(), label: Text('Enter Msg')),
              ),
            ),
            ElevatedButton(
                onPressed: () async {
                  // const weburl = 'https://pub.dev/packages/share_plus';
                  if (_txtEditingController.value.text.isNotEmpty) {
                    await Share.share(_txtEditingController.text);
                  }
                },
                child: const Text('Share Text Msg')),
            const SizedBox(
              height: 10,
            ),
            ElevatedButton(
                onPressed: () async {
                  await Share.share('Share this text',
                      subject: 'any subject if you have');
                },
                child: const Text('Share Text ')),
            const SizedBox(
              height: 10,
            ),
            Image.network(imageurl),
            ElevatedButton(
                onPressed: () {
                  urlImage();
                },
                child: const Text('Share UrlImage')),
            const SizedBox(
              height: 10,
            ),
            ElevatedButton(
                onPressed: () async {
                  ImagePicker pickImagedata = ImagePicker();
                  XFile? xFile = await pickImagedata.pickImage(
                      source: ImageSource.gallery);
                  file = xFile != null ? File(xFile.path) : null;

                  Share.shareXFiles([XFile(file!.path)], text: 'Great picture');
                },
                child: const Text('Pick galleryImage')),
            const SizedBox(
              height: 10,
            ),
            ElevatedButton(
                onPressed: () async {
                  ImagePicker pickImagedata = ImagePicker();
                  XFile? xFile =
                      await pickImagedata.pickImage(source: ImageSource.camera);
                  file = xFile != null ? File(xFile.path) : null;

                  Share.shareXFiles([XFile(file!.path)], text: 'Great picture');
                },
                child: const Text('Pick cameraImage')),
            const SizedBox(
              height: 10,
            ),
            ElevatedButton(
                onPressed: () async {
                  final file =
                      await FilePicker.platform.pickFiles(type: FileType.audio);
                  if (file != null) {
                    final filepath = file.files.first;
                    await Share.shareXFiles([XFile(filepath.path.toString())]);
                  }
                },
                child: const Text('Pick audio')),
            const SizedBox(
              height: 10,
            ),
            ElevatedButton(
                onPressed: () async {
                  final file =
                      await FilePicker.platform.pickFiles(type: FileType.video);
                  if (file != null) {
                    final filepath = file.files.first;
                    await Share.shareXFiles([XFile(filepath.path.toString())]);
                  }
                },
                child: const Text('Pick video')),
            const SizedBox(
              height: 10,
            ),
            ElevatedButton(
                onPressed: () async {
                  final file =
                      await FilePicker.platform.pickFiles(type: FileType.image);
                  if (file != null) {
                    final filepath = file.files.first;
                    await Share.shareXFiles([XFile(filepath.path.toString())]);
                  }
                },
                child: const Text('Pick image')),
          ],
        ),
      ),
    );
  }
}
