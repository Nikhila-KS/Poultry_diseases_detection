import 'package:flutter/material.dart';
import 'dart:io';

import 'package:image_picker/image_picker.dart';

class addImageScreen extends StatefulWidget{
  const addImageScreen({super.key});

  @override 
  State<addImageScreen> createState(){
    return _addImageScreenState();
  }
}

class _addImageScreenState extends State<addImageScreen>{
  File? _selectedImage;

  // void savePlace(){
  //   final enteredtitle=_titlecontroller.text;
  //   if(enteredtitle.isEmpty || _selectedImage==null){
  //     ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
  //       content: Text("Some error occured"),
  //     ));
  //     return;
  //   }
  //   ref.read(userPlacesProvider.notifier).addPlace(enteredtitle,_selectedImage!);
  //   Navigator.of(context).pop();
  //   return;
  // }
  // @override
  // void dispose(){
  //   _titlecontroller.dispose();
  //   super.dispose();
  // }
  
  
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text('Predict Poultry Disease'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(12),
        child: Column(
          children: [
            // TextField(
            //   decoration:const InputDecoration(labelText: 'Title'),
            //   controller: _titlecontroller,
            //   style: TextStyle(color: Theme.of(context).colorScheme.onBackground),
            //   ),
              // Image input
              const SizedBox(height: 40,),
              ImageInput(
                onPickImage: (image){
                  _selectedImage=image;
                },
              ),
              const SizedBox(height: 27,),
              // const locationInput(),
              const SizedBox(height: 17,),
              ElevatedButton.icon(
                icon: const Icon(Icons.compare_outlined),
                onPressed: (){},
                label: const Text('Predict'),
                ),
        ],
        ),
      ),
    );
  }
}
//======================
class ImageInput extends StatefulWidget {
  const ImageInput({super.key,required this.onPickImage});

  final void Function(File image) onPickImage;

  @override
  State<ImageInput> createState() {
    return _ImageInputState();
  }
}

class _ImageInputState extends State<ImageInput> {
  File? _selectedImage;

  void _takePicture() async {
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

  @override
  Widget build(BuildContext context) {
    Widget content = TextButton.icon(
      onPressed: _takePicture,
      icon: const Icon(Icons.camera),
      label: const Text('Click picture'),
    );

    if (_selectedImage != null) {
      content = GestureDetector(
        onTap: _takePicture,
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
