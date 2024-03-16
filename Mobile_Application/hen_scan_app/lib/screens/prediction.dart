import 'package:flutter/material.dart';

import 'dart:io';
import 'package:image_picker/image_picker.dart';
import 'package:hen_scan/flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

class predictionScreen extends StatefulWidget {
  const predictionScreen({super.key, required this.r});

  final List r;

  @override
  State<predictionScreen> createState() {
    return _predictionScreenState();
  }
}

class _predictionScreenState extends State<predictionScreen> {
  File? _selectedImage;

  @override
  Widget build(BuildContext context) {
    Map<String, Map<String, String>> diseases = {
      "Loading...": {
        "about": "",
        "other symptoms in birds": "",
        "cure for birds": "",
        "precautions to prevent spread and death of birds": "",
        "prevention they should take to not get affected": ""
      },
      "Salmonella": {
        "about": AppLocalizations.of(context)!.sabout,
        "other symptoms in birds": AppLocalizations.of(context)!.sothersymptoms,
        "cure for birds": AppLocalizations.of(context)!.scure,
        "precautions to prevent spread and death of birds":
            AppLocalizations.of(context)!.sprevent,
        "prevention they should take to not get affected":
            AppLocalizations.of(context)!.snote,
      },
      "Newcastle_diseases": {
        "about": AppLocalizations.of(context)!.nabout,
        "other symptoms in birds": AppLocalizations.of(context)!.nothersymptoms,
        "cure for birds": AppLocalizations.of(context)!.ncure,
        "precautions to prevent spread and death of birds":
            AppLocalizations.of(context)!.nprevent,
        "prevention they should take to not get affected":
            AppLocalizations.of(context)!.nnote,
      },
      "Coccidiosis": {
        "about": AppLocalizations.of(context)!.cabout,
        "other symptoms in birds": AppLocalizations.of(context)!.cothersymptoms,
        "cure for birds": AppLocalizations.of(context)!.ccure,
        "precautions to prevent spread and death of birds":
            AppLocalizations.of(context)!.cprevent,
        "prevention they should take to not get affected":
            AppLocalizations.of(context)!.cnote,
      },
      "Healthy_poultry": {
        "about": AppLocalizations.of(context)!.habout,
        "other symptoms in birds": AppLocalizations.of(context)!.hothersymptoms,
        "cure for birds": AppLocalizations.of(context)!.hcure,
        "precautions to prevent spread and death of birds":
            AppLocalizations.of(context)!.hprevent,
        "prevention they should take to not get affected":
            AppLocalizations.of(context)!.hnote,
      }
    };
    String pdisease = widget.r[0]['label'] ?? "Loading...";
    // String pdisease = "Loading...";

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Prediction',
          style: TextStyle(
              color: Theme.of(context).primaryColorDark,
              fontWeight: FontWeight.w500),
        ),
        backgroundColor: Theme.of(context).primaryColor.withOpacity(0.4),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(13),
        child: Column(
          children: [
            Center(
              child: Column(
                children: widget.r.map((result) {
                  if (pdisease == "" && result['label'] != null) {
                    setState(() {
                      pdisease = result['label'];
                    });
                  }
                  return Column(
                    children: [
                      Card(
                        child: Container(
                          margin: const EdgeInsets.all(10),
                          child: Text(
                            "${result['label']} - ${result['confidence'].toStringAsFixed(2)}",
                            style: const TextStyle(
                              color: Colors.red,
                              fontSize: 20,
                            ),
                          ),
                        ),
                      ),
                      //--------------
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            // Text("ppppppppppppp${pdisease.runtimeType}"),
                            const SizedBox(
                              height: 12,
                            ),

                            if (diseases.containsKey(pdisease))
                              Text(
                                diseases[pdisease]!["about"] ??
                                    'No information available',
                                style: TextStyle(
                                  color:
                                      Theme.of(context).unselectedWidgetColor,
                                  fontSize: 16,

                                  fontWeight: FontWeight.w400,
                                  // textAlign: TextAlign.justify,
                                ),
                                textAlign: TextAlign.justify,
                              ),
                            if (diseases.containsKey(pdisease))
                              Text(
                                diseases[pdisease]![
                                        "other symptoms in birds"] ??
                                    'No information available',
                                style: TextStyle(
                                  color:
                                      Theme.of(context).unselectedWidgetColor,
                                  fontSize: 16,

                                  fontWeight: FontWeight.w400,
                                  // textAlign: TextAlign.justify,
                                ),
                                textAlign: TextAlign.justify,
                              ),
                            if (diseases.containsKey(pdisease))
                              Text(
                                diseases[pdisease]!["cure for birds"] ??
                                    'No information available',
                                style: TextStyle(
                                  color:
                                      Theme.of(context).unselectedWidgetColor,
                                  fontSize: 16,

                                  fontWeight: FontWeight.w400,
                                  // textAlign: TextAlign.justify,
                                ),
                                textAlign: TextAlign.justify,
                              ),
                            if (diseases.containsKey(pdisease))
                              Text(
                                diseases[pdisease]![
                                        "precautions to prevent spread and death of birds"] ??
                                    'No information available',
                                style: TextStyle(
                                  color:
                                      Theme.of(context).unselectedWidgetColor,
                                  fontSize: 16,

                                  fontWeight: FontWeight.w400,
                                  // textAlign: TextAlign.justify,
                                ),
                                textAlign: TextAlign.justify,
                              ),
                            if (diseases.containsKey(pdisease))
                              Text(
                                diseases[pdisease]![
                                        "prevention they should take to not get affected"] ??
                                    'No information available',
                                style: TextStyle(
                                  color:
                                      Theme.of(context).unselectedWidgetColor,
                                  fontSize: 16,

                                  fontWeight: FontWeight.w400,
                                  // textAlign: TextAlign.justify,
                                ),
                                textAlign: TextAlign.justify,
                              ),
                          ],
                        ),
                      ),
                      //-----
                    ],
                  );
                }).toList(),
              ),
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
