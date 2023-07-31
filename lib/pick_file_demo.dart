import 'dart:io';

import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';

class FilePickerDemo extends StatefulWidget {
  const FilePickerDemo({super.key});

  @override
  State<FilePickerDemo> createState() => _FilePickerDemoState();
}

class _FilePickerDemoState extends State<FilePickerDemo> {
  File? file;
  Future<void> pickFileFromStorage() async {
    FilePickerResult? pickerResult = await FilePicker.platform.pickFiles();

    file = pickerResult != null ? File(pickerResult.files.single.path!) : null;
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Column(
            children: [
              MaterialButton(
                onPressed: () {
                  pickFileFromStorage();
                  setState(() {});
                },
                color: Colors.blue,
                child: const Text('Upload File'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
