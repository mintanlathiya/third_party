import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class ImageProviderExDemo extends StatefulWidget {
  const ImageProviderExDemo({super.key});

  @override
  State<ImageProviderExDemo> createState() => _ImageProviderExDemoState();
}

class _ImageProviderExDemoState extends State<ImageProviderExDemo> {
  List<File?> selectedImage = [];
  Future<void> selectImageFromGallary() async {
    ImagePicker pickImagedata = ImagePicker();
    final xFile = await pickImagedata.pickMultiImage(imageQuality: 100);

    if (xFile.isNotEmpty) {
      for (var element in xFile) {
        selectedImage.add(File(element.path));
      }
    }

    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            MaterialButton(
              onPressed: () async {
                await selectImageFromGallary();

                setState(() {});
              },
              child: const Text('Pick Images'),
            ),
            Expanded(
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  mainAxisSpacing: 5,
                  crossAxisSpacing: 5,
                ),
                itemCount: selectedImage.length,
                itemBuilder: (context, index) {
                  return Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: selectedImage.isNotEmpty
                            ? FileImage(selectedImage[index]!)
                            : const NetworkImage(
                                'https://images-eu.ssl-images-amazon.com/images/G/31/img22/AmazonBrands/Deeksha/in_cpb_btf_pc_qc_186x116_toys_3._SY116_CB600590661_.jpg',
                              ) as ImageProvider,
                      ),
                    ),
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
