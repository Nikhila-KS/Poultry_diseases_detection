import 'package:flutter/material.dart';
import 'dart:io';

import 'package:image_picker/image_picker.dart';

class predictionScreen extends StatefulWidget {
  const predictionScreen({super.key});

  @override
  State<predictionScreen> createState() {
    return _predictionScreenState();
  }
}

class _predictionScreenState extends State<predictionScreen> {
  File? _selectedImage;

  @override
  Widget build(BuildContext context) {
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
        padding: const EdgeInsets.all(12),
        child: Column(
          children: [
            const SizedBox(
              height: 50,
            ),
            Text(
              '91%-Newcastle disease',
              style: TextStyle(
                color: Theme.of(context).unselectedWidgetColor,
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 15,),
            Text(
              'Newcastle disease is a highly contagious viral illness affecting birds, particularly poultry, but it can also impact other avian species. It\'s caused by the Newcastle disease virus (NDV), also known as avian paramyxovirus type 1.',
              style: TextStyle(
                color: Theme.of(context).unselectedWidgetColor,
                fontSize: 16,
                fontWeight: FontWeight.normal,
              ),
            ),
            const SizedBox(height: 15,),
            Text(
              'Other symptoms ',
              style: TextStyle(
                color: Theme.of(context).unselectedWidgetColor,
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.start,
            ),
            Text(
              'Digestive Issues: Diarrhea, reduced feed intake.\nNervous System Problems: Twisting of the head and neck, paralysis, tremors, and circling.\nDrop in Egg Production: Fewer eggs produced or a decline in egg quality.',
              style: TextStyle(
                color: Theme.of(context).unselectedWidgetColor,
                fontSize: 16,
                fontWeight: FontWeight.normal,
              ),
            ),
            const SizedBox(height: 15,),
            Text(
              'Prevention',
              style: TextStyle(
                color: Theme.of(context).unselectedWidgetColor,
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.start,
            ),
            Text(
              'Vaccination: Regularly vaccinate your poultry against Newcastle disease. Consult with a veterinarian for a suitable vaccination schedule.\nBiosecurity Measures: Implement strict biosecurity protocols to prevent the entry of the virus onto your farm. This includes controlling visitors, disinfecting equipment, and isolating new birds before introducing them to the flock.\nQuarantine: Quarantine new birds to ensure they are free from disease before introducing them to the rest of the flock.',
              style: TextStyle(
                color: Theme.of(context).unselectedWidgetColor,
                fontSize: 16,
                fontWeight: FontWeight.normal,
              ),
            ),
            const SizedBox(height: 15,),
            Text(
              'What to Do If Affected',
              style: TextStyle(
                color: Theme.of(context).unselectedWidgetColor,
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            Text(
              "Isolate Affected Birds: Immediately separate any birds showing symptoms from the rest of the flock to prevent the spread of the disease.\nContact a Veterinarian or Agricultural Authorities: Seek professional help for proper diagnosis and guidance. They might recommend euthanasia of infected birds to prevent further spread of the disease.\nImplement Strict Biosecurity Measures: Enhance biosecurity measures to prevent the spread of the virus within your farm and to neighboring farms.\nFollow Disposal Protocols: Follow recommended procedures for the safe disposal of infected birds and contaminated materials.",
              style: TextStyle(
                color: Theme.of(context).unselectedWidgetColor,
                fontSize: 16,
                fontWeight: FontWeight.normal,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
