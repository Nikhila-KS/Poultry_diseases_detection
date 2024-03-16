import 'dart:io';
import 'dart:typed_data';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hen_scan/flutter_gen/gen_l10n/app_localizations.dart';
import 'package:hen_scan/screens/prediction.dart';
import 'package:image/image.dart' as img;
import 'package:image_picker/image_picker.dart';
import 'package:tflite/tflite.dart';

class addImageScreen extends StatefulWidget {
  const addImageScreen({Key? key}) : super(key: key);

  @override
  _addImageScreenState createState() => _addImageScreenState();
}

class _addImageScreenState extends State<addImageScreen> {
  late File _image;
  late List _results;
  bool imageSelect = false;
  @override
  void initState() {
    super.initState();
    loadModel();
  }

  Future loadModel() async {
    Tflite.close();
    String res;
    res = (await Tflite.loadModel(
        model: "assets/cnn_model.tflite", labels: "assets/cnn_labels.txt"))!;
  }

  Future imageClassification(File image) async {
    var recognitions = await Tflite.runModelOnImage(
        path: image.path, // required
        imageMean: 0.0, // defaults to 117.0
        imageStd: 255.0, // defaults to 1.0
        numResults: 2, // defaults to 5
        threshold: 0.2, // defaults to 0.1
        asynch: true // defaults to true
        );
    setState(() {
      _results = recognitions!;
      _image = image;
      imageSelect = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          AppLocalizations.of(context)!.clickImagePageHeading,
          style: TextStyle(
              color: Theme.of(context).primaryColorDark,
              fontWeight: FontWeight.w500),
        ),
        backgroundColor: Theme.of(context).canvasColor,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(12),
        child: Column(children: [
          const SizedBox(
            height: 35,
          ),
          (imageSelect)
              ? Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                      width: 1,
                      color: Theme.of(context)
                          .colorScheme
                          .primary
                          .withOpacity(0.2),
                    ),
                  ),
                  height: 250,
                  width: double.infinity,
                  alignment: Alignment.center,
                  child: GestureDetector(
                    onTap: pickImage,
                    child: Image.file(
                      _image,
                      fit: BoxFit.cover,
                      width: double.infinity,
                      height: double.infinity,
                    ),
                  ),
                )
              : Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                      width: 1,
                      color: Theme.of(context)
                          .colorScheme
                          .primary
                          .withOpacity(0.2),
                    ),
                  ),
                  height: 250,
                  width: double.infinity,
                  alignment: Alignment.center,
                  child: GestureDetector(
                    onTap: pickImage,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        TextButton.icon(
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all(
                                Theme.of(context)
                                    .primaryColorLight
                                    .withOpacity(0.8)),
                          ),
                          onPressed: clickImage,
                          icon: Icon(
                            Icons.camera,
                            color: Theme.of(context).secondaryHeaderColor,
                          ),
                          label: Text(
                            AppLocalizations.of(context)!.clickImage,
                            style: TextStyle(
                                color: Theme.of(context).secondaryHeaderColor),
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        TextButton.icon(
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all(
                                Theme.of(context)
                                    .primaryColorLight
                                    .withOpacity(0.8)),
                          ),
                          onPressed: pickImage,
                          icon: Icon(
                            Icons.upload_file_rounded,
                            color: Theme.of(context).secondaryHeaderColor,
                          ),
                          label: Text(
                            AppLocalizations.of(context)!.uploadimage,
                            style: TextStyle(
                                color: Theme.of(context).secondaryHeaderColor),
                          ),
                        ),
                      ],
                    ),
                  )),
          const SizedBox(
            height: 25,
          ),
          ElevatedButton.icon(
            icon: const Icon(Icons.compare_outlined),
            onPressed: (imageSelect)
                ? () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => predictionScreen(
                                  r: _results,
                                )));
                  }
                : () {},
            label: Text(AppLocalizations.of(context)!.predictButton),
          ),
        ]),
      ),
    );
  }

  Future pickImage() async {
    final ImagePicker picker = ImagePicker();
    final XFile? pickedFile = await picker.pickImage(
      source: ImageSource.gallery,
    );
    File image = File(pickedFile!.path);
    imageClassification(image);
  }

  Future clickImage() async {
    final ImagePicker picker = ImagePicker();
    final XFile? pickedFile = await picker.pickImage(
      source: ImageSource.camera,
    );
    File image = File(pickedFile!.path);
    imageClassification(image);
  }
}
