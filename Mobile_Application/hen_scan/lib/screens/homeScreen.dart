import 'package:flutter/material.dart';
import 'package:hen_scan/flutter_gen/gen_l10n/app_localizations.dart';
import 'package:hen_scan/languages/chooseLangButton.dart';
import 'package:hen_scan/screens/click_load_image.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

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
              ),
              const SizedBox(height: 10,),
              Text(
                AppLocalizations.of(context)!.homeBody2,
                style: TextStyle(
                  color: Theme.of(context).unselectedWidgetColor,
                  fontSize: 15,
                ),
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
              ),
              Text(
                AppLocalizations.of(context)!.homeBody5,
                style: TextStyle(
                  color: Theme.of(context).unselectedWidgetColor,
                  fontSize: 15,
                ),
              ),
              Text(
                AppLocalizations.of(context)!.homeBody6,
                style: TextStyle(
                  color: Theme.of(context).unselectedWidgetColor,
                  fontSize: 15,
                ),
              ),
              
              const SizedBox(
                height: 10,
              ),
            ],
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        // shape: BeveledRectangleBorder(
        //   borderRadius: BorderRadius.circular(14),
        //   side: BorderSide(color: Theme.of(context).primaryColorDark.withOpacity(0.1))),
        backgroundColor:Theme.of(context).navigationBarTheme.shadowColor,
        foregroundColor:Theme.of(context).navigationBarTheme.indicatorColor,
          child: Icon(
            Icons.photo_camera_rounded,
            color: Theme.of(context).primaryColorDark,
          ),
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context)=>const addImageScreen(),),);
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
        },),
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
showAlertDialog(BuildContext context) { 
  Widget cancelButton = TextButton(
    child: const Text("Mail us"),
    onPressed:  () {},
  );
  Widget continueButton = TextButton(
    child: const Text("Cancel"),
    onPressed: (){ Navigator.pop(context);},
  );

  // set up the AlertDialog
  AlertDialog alert = AlertDialog(
    title: const Text("Contact"),
    content: const Text("For any inquiries or assistance, please feel free to reach out to us via email.Our team will get back to you promptly.Thank you for using our app!"),
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
