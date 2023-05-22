import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import '../../themes/colors_theme.dart';

class FormCampoImagem extends StatefulWidget {
  final String legenda;

  const FormCampoImagem({Key? key, required this.legenda}) : super(key: key);

  @override
  _FormCampoImagemState createState() => _FormCampoImagemState();
}

class _FormCampoImagemState extends State<FormCampoImagem> {
  String? imagePath;

  bool isValid() {
    return imagePath != null;
  }

  void _getImage() async {
    final imageGallery = ImagePicker();
    final imageArchive = await imageGallery.pickImage(
      source: ImageSource.gallery,
      maxHeight: 200,
      maxWidth: 200,
    );

    if (imageArchive != null) {
      setState(() {
        imagePath = imageArchive.path;
      });
    }
  }

  void _getPhotography() async {
    final photography = ImagePicker();
    final photographyFile = await photography.pickImage(
      source: ImageSource.camera,
      maxHeight: 200,
      maxWidth: 200,
    );

    if (photographyFile != null) {
      setState(() {
        imagePath = photographyFile.path;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                widget.legenda,
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              const Text(
                ' *',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.red,
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 200,
                height: 200,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: const BorderRadius.all(
                    Radius.circular(18),
                  ),
                  border: Border.all(width: 2, color: Colors.black),
                ),
                child: ClipRRect(
                  borderRadius: const BorderRadius.all(
                    Radius.circular(15),
                  ),
                  child: imagePath != null
                      ? Image.file(
                          File(imagePath!),
                          fit: BoxFit.cover,
                        )
                      : const Icon(Icons.image_outlined, size: 100),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: _getPhotography,
                style: ElevatedButton.styleFrom(
                  backgroundColor: ColorsTheme.contrast,
                  side: const BorderSide(
                    width: 1.0,
                  ),
                ),
                child: const Icon(
                  Icons.add_a_photo_sharp,
                  color: Colors.white,
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              ElevatedButton(
                onPressed: _getImage,
                style: ElevatedButton.styleFrom(
                  backgroundColor: ColorsTheme.contrast,
                  side: const BorderSide(
                    width: 1.0,
                  ),
                ),
                child: const Icon(
                  Icons.add_photo_alternate_rounded,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
