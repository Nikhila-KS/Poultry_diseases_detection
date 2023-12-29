import 'package:flutter/material.dart';
import 'package:hen_scan/screens/click_load_image.dart';

class homeScreen extends StatelessWidget {
  const homeScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'HenScan',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Theme.of(context).primaryColor,
            fontSize: 25,
          ),
        ),
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
                'HenScan is an innovative app designed for poultry health management. It utilizes fecal image analysis to predict prevalent diseases like Coccidiosis, Salmonella, Newcastle disease, or assess the health status of poultry.',
                style: TextStyle(
                  color: Theme.of(context).unselectedWidgetColor,
                  fontSize: 15,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                'How to Use ',
                style: TextStyle(
                  color: Theme.of(context).unselectedWidgetColor,
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
              Text(
                "1. Capture: Tap the camera icon to take a picture of the poultry's fecal sample",
                style: TextStyle(
                  color: Theme.of(context).unselectedWidgetColor,
                  fontSize: 15,
                ),
              ),
              Text(
                "2. Predict: Click the predict button to receive an instant analysis and prediction regarding the poultry's health condition",
                style: TextStyle(
                  color: Theme.of(context).unselectedWidgetColor,
                  fontSize: 15,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                "Simplified Simulator:",
                style: TextStyle(
                  color: Theme.of(context).unselectedWidgetColor,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                "The app mimics a simple camera interface. Users can click to capture an image and receive immediate predictions, offering a streamlined experience for disease detection and preventive measures.",
                style: TextStyle(
                  color: Theme.of(context).unselectedWidgetColor,
                  fontSize: 15,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                "Aim",
                style: TextStyle(
                  color: Theme.of(context).unselectedWidgetColor,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                "HenScan aims to empower poultry farmers and veterinarians by providing an accessible and efficient tool for early disease detection and proactive poultry health management.",
                style: TextStyle(
                  color: Theme.of(context).unselectedWidgetColor,
                  fontSize: 15,
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
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
                // IconButton(icon: const Icon(Icons.home), onPressed: () {}),
                // IconButton(icon: const Icon(Icons.search), onPressed: () {}),
                const SizedBox(width: 40), // The dummy child
                // IconButton(icon: const Icon(Icons.notifications), onPressed: () {}),
                IconButton(
                    icon: Icon(
                      Icons.question_answer_rounded,
                      color: Theme.of(context).primaryColorDark,
                    ),
                    onPressed: () {
          showAlertDialog(context);
        },),
              ],
            ),
          )),
          
    );
  }
}
showAlertDialog(BuildContext context) { 
  Widget cancelButton = TextButton(
    child: const Text("Cancel"),
    onPressed:  () {},
  );
  Widget continueButton = TextButton(
    child: const Text("Continue"),
    onPressed:  () {},
  );

  // set up the AlertDialog
  AlertDialog alert = AlertDialog(
    title: const Text("AlertDialog"),
    content: const Text("Would you like to continue learning how to use Flutter alerts?"),
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
