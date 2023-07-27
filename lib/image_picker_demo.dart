import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class ImagePickerDemo extends StatefulWidget {
  const ImagePickerDemo({super.key});

  @override
  State<ImagePickerDemo> createState() => _ImagePickerDemoState();
}

class _ImagePickerDemoState extends State<ImagePickerDemo> {
  File? file;
  Future<void> selectImageFromGallary() async {
    ImagePicker pickImagedata = ImagePicker();
    XFile? xFile = await pickImagedata.pickImage(source: ImageSource.gallery);
    file = xFile != null ? File(xFile.path) : null;

    setState(() {});
  }

  Future<void> selectImageFromCamera() async {
    ImagePicker pickImagedata = ImagePicker();
    XFile? xFile = await pickImagedata.pickImage(source: ImageSource.camera);

    file = xFile != null ? File(xFile.path) : null;

    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            CircleAvatar(
              backgroundImage: file != null
                  ? FileImage(file!)
                  : const NetworkImage(
                      'https://images-eu.ssl-images-amazon.com/images/G/31/img22/AmazonBrands/Deeksha/in_cpb_btf_pc_qc_186x116_toys_3._SY116_CB600590661_.jpg',
                    ) as ImageProvider,
              radius: 50,
            ),
            MaterialButton(
              onPressed: () {
                selectImageFromGallary();
                setState(() {});
              },
              child: const Text(
                'upload from gallary',
                style: TextStyle(fontSize: 20),
              ),
            ),
            MaterialButton(
              onPressed: () {
                selectImageFromCamera();
                setState(() {});
              },
              child: const Text(
                'take picture',
                style: TextStyle(fontSize: 20),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
