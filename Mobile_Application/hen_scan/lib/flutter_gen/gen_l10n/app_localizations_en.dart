import 'app_localizations.dart';

/// The translations for English (`en`).
class AppLocalizationsEn extends AppLocalizations {
  AppLocalizationsEn([String locale = 'en']) : super(locale);

  @override
  String get homeHeading => 'HenScan';

  @override
  String get homeBody1 => 'HenScan is an innovative app designed for poultry health management. It utilizes fecal image analysis to predict prevalent diseases like Coccidiosis, Salmonella, Newcastle disease, or assess the health status of poultry.';

  @override
  String get homeBody2 => 'HenScan aims to empower poultry farmers and veterinarians by providing an accessible and efficient tool for early disease detection and proactive poultry health management.';

  @override
  String get homeBody3 => 'Users can click to capture an image and receive immediate predictions, offering a streamlined experience for disease detection and preventive measures.';

  @override
  String get homeBody4 => 'How to Use ';

  @override
  String get homeBody5 => '1. Capture: Tap the camera icon to take a picture of the poultry\'s fecal sample';

  @override
  String get homeBody6 => '2. Predict: Click the predict button to receive an instant analysis and prediction regarding the poultry\'s health condition';

  @override
  String get clickImagePageHeading => 'Predict Poultry Disease';
}
