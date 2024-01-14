import 'package:flutter/material.dart';
import 'dart:io';
import 'package:hen_scan/screens/prediction.dart';

import 'package:image_picker/image_picker.dart';

class addImageScreen extends StatefulWidget {
  const addImageScreen({super.key});

  @override
  State<addImageScreen> createState() {
    return _addImageScreenState();
  }
}

class _addImageScreenState extends State<addImageScreen> {
  File? _selectedImage;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Predict Poultry Disease',
          style: TextStyle(
            color: Theme.of(context).primaryColorDark,
            fontWeight: FontWeight.w500
            ),
        ),
        backgroundColor: Theme.of(context).canvasColor,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(12),
        child: Column(
          children: [
            const SizedBox(
              height: 70,
            ),
            ImageInput(
              onPickImage: (image) {
                _selectedImage = image;
              },
            ),
            const SizedBox(
              height: 27,
            ),
            // const locationInput(),
            const SizedBox(
              height: 17,
            ),
            ElevatedButton.icon(
              icon: const Icon(Icons.compare_outlined),
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>const predictionScreen()));
              },
              label: const Text('Predict'),
            ),
          ],
        ),
      ),
    );
  }
}

//======================Click image using camera or select from gallery=================
class ImageInput extends StatefulWidget {
  const ImageInput({super.key, required this.onPickImage});

  final void Function(File image) onPickImage;

  @override
  State<ImageInput> createState() {
    return _ImageInputState();
  }
}

class _ImageInputState extends State<ImageInput> {
  File? _selectedImage;

  void _clickImgae() async {
    final imagePicker = ImagePicker();
    final pickedImage =
        await imagePicker.pickImage(source: ImageSource.camera, maxWidth: 600);

    if (pickedImage == null) {
      return;
    }
    setState(() {
      _selectedImage = File(pickedImage.path);
    });
    widget.onPickImage(_selectedImage!);
  }

  void _uploadImage() async {
    final imagePicker = ImagePicker();
    final pickedImage =
        await imagePicker.pickImage(source: ImageSource.gallery, maxWidth: 600);

    if (pickedImage == null) {
      return;
    }
    setState(() {
      _selectedImage = File(pickedImage.path);
    });
    widget.onPickImage(_selectedImage!);
  }

  @override
  Widget build(BuildContext context) {
    Widget content = Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        TextButton.icon(
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(
                Theme.of(context).primaryColorLight.withOpacity(0.8)),
          ),
          onPressed: _clickImgae,
          icon: Icon(
            Icons.camera,
            color: Theme.of(context).secondaryHeaderColor,
          ),
          label: Text(
            'Click poultry fecal image ',
            style: TextStyle(color: Theme.of(context).secondaryHeaderColor),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        TextButton.icon(
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(
                Theme.of(context).primaryColorLight.withOpacity(0.8)),
          ),
          onPressed: _uploadImage,
          icon: Icon(
            Icons.upload_file_rounded,
            color: Theme.of(context).secondaryHeaderColor,
          ),
          label: Text(
            'select poultry fecal image from gallery',
            style: TextStyle(color: Theme.of(context).secondaryHeaderColor),
          ),
        ),
      ],
    );

    if (_selectedImage != null) {
      content = GestureDetector(
        onTap: _clickImgae,
        child: Image.file(
          _selectedImage!,
          fit: BoxFit.cover,
          width: double.infinity,
          height: double.infinity,
        ),
      );
    }
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          width: 1,
          color: Theme.of(context).colorScheme.primary.withOpacity(0.2),
        ),
      ),
      height: 250,
      width: double.infinity,
      alignment: Alignment.center,
      child: content,
    );
  }
}

