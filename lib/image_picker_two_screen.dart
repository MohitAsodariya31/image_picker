import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class ImagePickerTwoScreen extends StatefulWidget {
  const ImagePickerTwoScreen({Key? key}) : super(key: key);

  @override
  State<ImagePickerTwoScreen> createState() => _ImagePickerTwoScreenState();
}

class _ImagePickerTwoScreenState extends State<ImagePickerTwoScreen> {
  final ImagePicker picker = ImagePicker();
  XFile? image;
  XFile? images;
  XFile? imagese;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Image Picker"),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                image != null
                    ? Image.file(
                        File(image!.path),
                      )
                    : const SizedBox(),
                ElevatedButton(
                  onPressed: () async {
                    image = await picker.pickImage(source: ImageSource.gallery);

                    if (image != null) {
                      debugPrint("image ----------------->>> ${image!.path}");
                      setState(() {});
                    }
                  },
                  child: const Text("Pick Image"),
                ),
                images != null
                    ? Image.file(
                        File(images!.path),
                      )
                    : const SizedBox(),
                ElevatedButton(
                  onPressed: () async {
                    images = await picker.pickImage(source: ImageSource.gallery);

                    if (images != null) {
                      debugPrint("image ----------------->>> ${images!.path}");
                      setState(() {});
                    }
                  },
                  child: const Text("Pick Image"),
                ),
                imagese != null
                    ? Image.file(
                        File(imagese!.path),
                      )
                    : const SizedBox(),
                ElevatedButton(
                  onPressed: () async {
                    imagese = await picker.pickImage(source: ImageSource.gallery);

                    if (imagese != null) {
                      debugPrint("image ----------------->>> ${imagese!.path}");
                      setState(() {});
                    }
                  },
                  child: const Text("Pick Image"),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
