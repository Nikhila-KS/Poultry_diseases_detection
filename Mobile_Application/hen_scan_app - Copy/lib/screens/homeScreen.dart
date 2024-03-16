import 'package:flutter/material.dart';
import 'package:hen_scan/flutter_gen/gen_l10n/app_localizations.dart';
import 'package:hen_scan/languages/chooseLangButton.dart';
import 'package:hen_scan/screens/click_load_image.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:hen_scan/screens/instruction_screen.dart';
import 'package:mailto/mailto.dart';
import 'package:url_launcher/url_launcher.dart';

class homeScreen extends StatelessWidget {
  const homeScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          AppLocalizations.of(context)!.homeHeading,
          textAlign: TextAlign.center,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Theme.of(context).primaryColor,
            fontSize: 25,
          ),
        ),
        // actions:const [LanguagePopUpMenu()],
        backgroundColor: Theme.of(context).primaryColor.withOpacity(0.4),
      ),
      body: Container(
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: Theme.of(context).canvasColor,
        ),
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(6.0),
            child: Column(
              children: [
                const SizedBox(
                  height: 30,
                ),
                Text(
                  AppLocalizations.of(context)!.homeBody1,
                  style: TextStyle(
                    color: Theme.of(context).unselectedWidgetColor,
                    fontSize: 15,
                  ),
                  textAlign: TextAlign.justify,
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  AppLocalizations.of(context)!.homeBody2,
                  style: TextStyle(
                    color: Theme.of(context).unselectedWidgetColor,
                    fontSize: 15,
                  ),
                  textAlign: TextAlign.justify,
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  AppLocalizations.of(context)!.homeBody3,
                  style: TextStyle(
                    color: Theme.of(context).unselectedWidgetColor,
                    fontSize: 15,
                  ),
                  textAlign: TextAlign.justify,
                ),
                const SizedBox(
                  height: 10,
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  AppLocalizations.of(context)!.homeBody4,
                  style: TextStyle(
                    color: Theme.of(context).unselectedWidgetColor,
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                  textAlign: TextAlign.justify,
                ),
                const SizedBox(
                  height: 12,
                ),
                Text(
                  AppLocalizations.of(context)!.homeBody5,
                  style: TextStyle(
                    color: Theme.of(context).unselectedWidgetColor,
                    fontSize: 15,
                  ),
                  textAlign: TextAlign.justify,
                ),
                Text(
                  AppLocalizations.of(context)!.homeBody6,
                  style: TextStyle(
                    color: Theme.of(context).unselectedWidgetColor,
                    fontSize: 15,
                  ),
                  textAlign: TextAlign.justify,
                ),
                const SizedBox(
                  height: 10,
                ),
              ],
            ),
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
          // shape: BeveledRectangleBorder(
          //   borderRadius: BorderRadius.circular(14),
          //   side: BorderSide(color: Theme.of(context).primaryColorDark.withOpacity(0.1))),
          backgroundColor: Theme.of(context).navigationBarTheme.shadowColor,
          foregroundColor: Theme.of(context).navigationBarTheme.indicatorColor,
          child: Icon(
            Icons.photo_camera_rounded,
            color: Theme.of(context).primaryColorDark,
          ),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const instructionScreen(),
              ),
            );
          }),
      bottomNavigationBar: BottomAppBar(
          shape: const CircularNotchedRectangle(),
          child: SizedBox(
            height: 0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                IconButton(
                  icon: Icon(
                    Icons.question_answer_rounded,
                    color: Theme.of(context).primaryColorDark,
                  ),
                  onPressed: () {
                    showAlertDialog(context);
                  },
                ),
                // IconButton(icon: const Icon(Icons.home), onPressed: () {}),
                // IconButton(icon: const Icon(Icons.search), onPressed: () {}),
                const SizedBox(width: 40), // The dummy child
                // IconButton(icon: const Icon(Icons.notifications), onPressed: () {}),
                const LanguagePopUpMenu(),
              ],
            ),
          )),
    );
  }
}

launchMailto() async {
  final mailtoLink = Mailto(
    to: ['xyz@example.com'],
    subject: 'Query',
  );
  // Convert the Mailto instance into a string.
  // Use either Dart's string interpolation
  // or the toString() method.
  await launch('$mailtoLink');
}

showAlertDialog(BuildContext context) {
  Widget cancelButton = TextButton(
    child: Text(AppLocalizations.of(context)!.boxmailus),
    onPressed: () {
      launchMailto();
    },
  );
  Widget continueButton = TextButton(
    child: Text(AppLocalizations.of(context)!.boxcancel),
    onPressed: () {
      Navigator.pop(context);
    },
  );

  // set up the AlertDialog
  AlertDialog alert = AlertDialog(
    title: Text(AppLocalizations.of(context)!.boxCContact),
    content: Text(AppLocalizations.of(context)!.boxcontent),
    actions: [
      cancelButton,
      continueButton,
    ],
  );

  // show the dialog
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return alert;
    },
  );
}
