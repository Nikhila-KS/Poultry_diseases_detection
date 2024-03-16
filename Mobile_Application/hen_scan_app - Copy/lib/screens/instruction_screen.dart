import 'package:flutter/material.dart';
import 'package:hen_scan/flutter_gen/gen_l10n/app_localizations.dart';
import 'package:hen_scan/screens/click_load_image.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

class instructionScreen extends StatelessWidget {
  const instructionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 17),
            child: Column(
              children: [
                Text(
                  AppLocalizations.of(context)!.instructionScreenHeading,
                  style: TextStyle(
                    color: Theme.of(context).primaryColor,
                    fontWeight: FontWeight.w800,
                    fontSize: 37,
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                Text(
                  AppLocalizations.of(context)!.instructionScreenBody,
                  style: TextStyle(
                    color: Theme.of(context).unselectedWidgetColor,
                    fontSize: 16,

                    fontWeight: FontWeight.w400,
                    // textAlign: TextAlign.justify,
                  ),
                  textAlign: TextAlign.justify,
                ),
                const SizedBox(
                  height: 30,
                ),
                ElevatedButton.icon(
                  icon: const Icon(Icons.navigate_next),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const addImageScreen(),
                      ),
                    );
                  },
                  label: Text(
                    AppLocalizations.of(context)!.instructionScreenNext,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
