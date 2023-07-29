import 'package:flutter/material.dart';
import 'package:share_plus/share_plus.dart';

class SharePlusDemoUi extends StatefulWidget {
  const SharePlusDemoUi({super.key});

  @override
  State<SharePlusDemoUi> createState() => _SharePlusDemoUiState();
}

class _SharePlusDemoUiState extends State<SharePlusDemoUi> {
  final TextEditingController _txtEditingController = TextEditingController();
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
                  const weburl = 'https://pub.dev/packages/share_plus';
                  if (_txtEditingController.value.text.isNotEmpty) {
                    await Share.share('${_txtEditingController.text}$weburl');
                  }
                },
                child: const Text('Share Text Msg')),

            // Image.network(imageurl),
            // ElevatedButton(
            //     onPressed: () async {
            //       final uri = Uri.parse(imageurl);
            //       final res = await http.get(uri);
            //       final bytes = res.bodyBytes;

            //       final temp = await getTemporaryDirectory();
            //       final path = '${temp.path}/image.jpg';
            //       File(path).writeAsBytesSync(bytes);
            //      // await Share.shareFiles([path], text: 'Image From network');
            //       await Share.shareXFiles([XFile('assets/hello.txt')],
            //           text: 'Great picture');
            //     },
            //     child: const Text('Share Image')),
            // ElevatedButton(
            //     onPressed: () async {
            //       File? file;
            //       ImagePicker pickImagedata = ImagePicker();
            //       XFile? xFile = await pickImagedata.pickImage(
            //           source: ImageSource.gallery);
            //       file = xFile != null ? File(xFile.path) : null;
            //       Share.shareXFiles([XFile('assets/hello.txt')],
            //           text: 'Great picture');
            //     },
            //     child: const Text('Pick Image')),
          ],
        ),
      ),
    );
  }
}
