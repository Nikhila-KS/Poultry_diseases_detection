import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'app_localizations_en.dart';
import 'app_localizations_hi.dart';
import 'app_localizations_pa.dart';

/// Callers can lookup localized strings with an instance of AppLocalizations
/// returned by `AppLocalizations.of(context)`.
///
/// Applications need to include `AppLocalizations.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'gen_l10n/app_localizations.dart';
///
/// return MaterialApp(
///   localizationsDelegates: AppLocalizations.localizationsDelegates,
///   supportedLocales: AppLocalizations.supportedLocales,
///   home: MyApplicationHome(),
/// );
/// ```
///
/// ## Update pubspec.yaml
///
/// Please make sure to update your pubspec.yaml to include the following
/// packages:
///
/// ```yaml
/// dependencies:
///   # Internationalization support.
///   flutter_localizations:
///     sdk: flutter
///   intl: any # Use the pinned version from flutter_localizations
///
///   # Rest of dependencies
/// ```
///
/// ## iOS Applications
///
/// iOS applications define key application metadata, including supported
/// locales, in an Info.plist file that is built into the application bundle.
/// To configure the locales supported by your app, you’ll need to edit this
/// file.
///
/// First, open your project’s ios/Runner.xcworkspace Xcode workspace file.
/// Then, in the Project Navigator, open the Info.plist file under the Runner
/// project’s Runner folder.
///
/// Next, select the Information Property List item, select Add Item from the
/// Editor menu, then select Localizations from the pop-up menu.
///
/// Select and expand the newly-created Localizations item then, for each
/// locale your application supports, add a new item and select the locale
/// you wish to add from the pop-up menu in the Value field. This list should
/// be consistent with the languages listed in the AppLocalizations.supportedLocales
/// property.
abstract class AppLocalizations {
  AppLocalizations(String locale) : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static AppLocalizations? of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations);
  }

  static const LocalizationsDelegate<AppLocalizations> delegate = _AppLocalizationsDelegate();

  /// A list of this localizations delegate along with the default localizations
  /// delegates.
  ///
  /// Returns a list of localizations delegates containing this delegate along with
  /// GlobalMaterialLocalizations.delegate, GlobalCupertinoLocalizations.delegate,
  /// and GlobalWidgetsLocalizations.delegate.
  ///
  /// Additional delegates can be added by appending to this list in
  /// MaterialApp. This list does not have to be used at all if a custom list
  /// of delegates is preferred or required.
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates = <LocalizationsDelegate<dynamic>>[
    delegate,
    GlobalMaterialLocalizations.delegate,
    GlobalCupertinoLocalizations.delegate,
    GlobalWidgetsLocalizations.delegate,
  ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[
    Locale('en'),
    Locale('hi'),
    Locale('pa')
  ];

  /// No description provided for @homeHeading.
  ///
  /// In en, this message translates to:
  /// **'HenScan'**
  String get homeHeading;

  /// No description provided for @boxCContact.
  ///
  /// In en, this message translates to:
  /// **'Contact'**
  String get boxCContact;

  /// No description provided for @boxcontent.
  ///
  /// In en, this message translates to:
  /// **'For any inquiries or assistance, please feel free to reach out to us via email. Our team will get back to you promptly. Thank you for using our app!'**
  String get boxcontent;

  /// No description provided for @boxmailus.
  ///
  /// In en, this message translates to:
  /// **'Mail us'**
  String get boxmailus;

  /// No description provided for @boxcancel.
  ///
  /// In en, this message translates to:
  /// **'Cancel'**
  String get boxcancel;

  /// No description provided for @homeBody1.
  ///
  /// In en, this message translates to:
  /// **'HenScan is an innovative app designed for poultry health management. It utilizes fecal image analysis to predict prevalent diseases like Coccidiosis, Salmonella, Newcastle disease, or assess the health status of poultry.'**
  String get homeBody1;

  /// No description provided for @homeBody2.
  ///
  /// In en, this message translates to:
  /// **'HenScan aims to empower poultry farmers and veterinarians by providing an accessible and efficient tool for early disease detection and proactive poultry health management.'**
  String get homeBody2;

  /// No description provided for @homeBody3.
  ///
  /// In en, this message translates to:
  /// **'Users can click to capture an image and receive immediate predictions, offering a streamlined experience for disease detection and preventive measures.'**
  String get homeBody3;

  /// No description provided for @homeBody4.
  ///
  /// In en, this message translates to:
  /// **'How to Use '**
  String get homeBody4;

  /// No description provided for @homeBody5.
  ///
  /// In en, this message translates to:
  /// **'1. Capture: Tap the camera icon to take a picture of the poultry\'s fecal sample'**
  String get homeBody5;

  /// No description provided for @homeBody6.
  ///
  /// In en, this message translates to:
  /// **'2. Predict: Click the predict button to receive an instant analysis and prediction regarding the poultry\'s health condition'**
  String get homeBody6;

  /// No description provided for @instructionScreenHeading.
  ///
  /// In en, this message translates to:
  /// **'Instructions'**
  String get instructionScreenHeading;

  /// No description provided for @instructionScreenBody.
  ///
  /// In en, this message translates to:
  /// **'1. Upon clicking the \'Next\' button below, you will be directed to a screen featuring a camera button for image capture or an option to upload from your gallery.\n\n 2. To enhance prediction accuracy, ensure that the Fecal location in the captured or uploaded image is centered within the frame.\n\n 3. Note that if the app is presented with a non-fecal image, it may still generate a prediction, but the accuracy cannot be guaranteed. Users are strongly encouraged to upload only images of poultry feces for reliable disease detection.'**
  String get instructionScreenBody;

  /// No description provided for @instructionScreenNext.
  ///
  /// In en, this message translates to:
  /// **'Next'**
  String get instructionScreenNext;

  /// No description provided for @clickImagePageHeading.
  ///
  /// In en, this message translates to:
  /// **'Predict Poultry Disease'**
  String get clickImagePageHeading;

  /// No description provided for @clickImage.
  ///
  /// In en, this message translates to:
  /// **'Click poultry fecal image'**
  String get clickImage;

  /// No description provided for @uploadimage.
  ///
  /// In en, this message translates to:
  /// **'select poultry fecal image from gallery'**
  String get uploadimage;

  /// No description provided for @predictButton.
  ///
  /// In en, this message translates to:
  /// **'Predict'**
  String get predictButton;

  /// No description provided for @pstitle.
  ///
  /// In en, this message translates to:
  /// **'Prediction'**
  String get pstitle;

  /// No description provided for @cabout.
  ///
  /// In en, this message translates to:
  /// **'Coccidiosis is an intestinal infection caused by microscopic parasites called coccidia. It can affect various animals, including cats, dogs, birds, and livestock. It can cause diarrhea, weight loss, dehydration, and anemia.'**
  String get cabout;

  /// No description provided for @cothersymptoms.
  ///
  /// In en, this message translates to:
  /// **'\n\n Other symptoms \n\n Some other symptoms of coccidiosis in birds include: blood or mucus in the stool, abdominal pain, vomiting, fever, lethargy, and poor appetite. Symptoms usually appear within one to three weeks after exposure and last for two to four weeks.'**
  String get cothersymptoms;

  /// No description provided for @ccure.
  ///
  /// In en, this message translates to:
  /// **'\n\n Cure \n\nThere is no specific cure for coccidiosis, but some medications can help reduce the severity and duration of the infection. These include sulfonamides, amprolium, and toltrazuril. These medications are usually given orally for five to ten days.'**
  String get ccure;

  /// No description provided for @cprevent.
  ///
  /// In en, this message translates to:
  /// **'\n\n Precautions to prevention \n\n Some precautions to prevent or control coccidiosis include: keeping the environment clean and dry, removing feces promptly, disinfecting cages and equipment, providing fresh water and food, avoiding overcrowding and stress, and vaccinating animals if available.'**
  String get cprevent;

  /// No description provided for @cnote.
  ///
  /// In en, this message translates to:
  /// **'\n\n Note: \n\n Some prevention measures that humans should take to not get affected by coccidiosis from poultry include: wearing gloves and boots when cleaning poultry houses, washing hands after handling poultry or their feces, cooking poultry meat and eggs thoroughly, and avoiding contact with sick or dead birds.'**
  String get cnote;

  /// No description provided for @sabout.
  ///
  /// In en, this message translates to:
  /// **'\n Salmonella in poultry is a bacterial infection that affects the intestinal tract of chickens and other birds. It can cause diarrhea, fever, and reduced egg production. It can also be transmitted to humans through consumption of contaminated eggs or meat.'**
  String get sabout;

  /// No description provided for @sothersymptoms.
  ///
  /// In en, this message translates to:
  /// **'\n\n Other symptoms \n\n Some other symptoms of salmonella in poultry include: loss of appetite, dehydration, depression, ruffled feathers, huddling, and increased mortality. Symptoms usually appear within 12 to 72 hours after exposure and last for several days.'**
  String get sothersymptoms;

  /// No description provided for @scure.
  ///
  /// In en, this message translates to:
  /// **'\n\n Cure \n\n There is no specific cure for salmonella in poultry, but some antibiotics can help reduce the severity and duration of the infection. However, antibiotics should be used with caution, as they can also promote the development of antibiotic-resistant strains. Vaccination is another option to prevent or reduce the incidence of salmonella in poultry.'**
  String get scure;

  /// No description provided for @sprevent.
  ///
  /// In en, this message translates to:
  /// **'\n\n Precautions to prevention \n\n Some precautions to prevent or reduce the risk of salmonella in poultry include: washing hands before and after handling food, cooking food thoroughly, avoiding raw or undercooked eggs and meat, refrigerating food promptly, and avoiding contact with sick animals or people.'**
  String get sprevent;

  /// No description provided for @snote.
  ///
  /// In en, this message translates to:
  /// **'\n\n Note: \n\n Some prevention measures that humans should take to not get affected by salmonella from poultry include: washing hands after touching poultry or their eggs, keeping poultry and their eggs separate from other foods, cooking poultry and eggs to a safe internal temperature, and discarding any cracked or dirty eggs.'**
  String get snote;

  /// No description provided for @habout.
  ///
  /// In en, this message translates to:
  /// **'Healthy poultry are birds that are free from diseases, parasites, and injuries. They have good body condition, feather quality, and appetite. They produce eggs or meat of high quality and quantity.'**
  String get habout;

  /// No description provided for @hothersymptoms.
  ///
  /// In en, this message translates to:
  /// **'\n\n Other symptoms \n\n Healthy poultry do not show any signs of illness or distress, such as coughing, sneezing, diarrhea, blood in the stool, ruffled feathers, huddling, depression, or reduced egg production. They are alert, active, and vocal.'**
  String get hothersymptoms;

  /// No description provided for @hcure.
  ///
  /// In en, this message translates to:
  /// **'\n\n Healthy poultry do not need any specific cure, but they may benefit from regular health check-ups, deworming, and vaccination. These can help prevent or reduce the risk of diseases and parasites.'**
  String get hcure;

  /// No description provided for @hprevent.
  ///
  /// In en, this message translates to:
  /// **'\n\n Healthy poultry should be kept in a clean, dry, and well-ventilated environment, with adequate space, feed, and water. They should be protected from predators, pests, and extreme weather. They should be separated from sick or new birds, and any dead or diseased birds should be removed and disposed of properly.'**
  String get hprevent;

  /// No description provided for @hnote.
  ///
  /// In en, this message translates to:
  /// **'\n\n Note: \nHealthy poultry should be fed a balanced and nutritious diet, with supplements if needed. They should be given clean and fresh water, and avoid contaminated food or water. They should be vaccinated against common diseases, and treated for parasites if necessary. They should also be handled with care and hygiene, and avoid stress and injury.'**
  String get hnote;

  /// No description provided for @nabout.
  ///
  /// In en, this message translates to:
  /// **'Newcastle disease is a severe, systemic, and fatal viral disease of poultry due to virulent strains of avian paramyxovirus type 1. Clinical signs in unvaccinated birds include sudden death, lethargy, and respiratory distress. Diagnosis is based on laboratory confirmation.'**
  String get nabout;

  /// No description provided for @nothersymptoms.
  ///
  /// In en, this message translates to:
  /// **'\n\n Other symptoms \n\n Some other symptoms of Newcastle disease include: coughing, sneezing, gurgling, rattling, tremors, paralysis, twisting of the neck, watery faeces, depression, lack of appetite, and reduced egg production and quality.'**
  String get nothersymptoms;

  /// No description provided for @ncure.
  ///
  /// In en, this message translates to:
  /// **'\n\n Cure \n\n There is no cure for Newcastle disease, and infected and susceptible birds in the vicinity of an outbreak are culled to contain transmission of the disease. Vaccination is the best way to protect the flock from the disease.'**
  String get ncure;

  /// No description provided for @nprevent.
  ///
  /// In en, this message translates to:
  /// **'\n\n Precautions to prevention \n\n Some precautions to prevent or control Newcastle disease include: practicing strict biosecurity on the farm, isolating new or sick birds, avoiding contact with wild birds or pigeons, disinfecting equipment and clothing, and reporting any suspicion of the disease to the authorities.'**
  String get nprevent;

  /// No description provided for @nnote.
  ///
  /// In en, this message translates to:
  /// **'\n\nNote: \n\n Some prevention measures that humans should take to not get affected by Newcastle disease from poultry include: wearing protective clothing and gloves when handling sick or dead birds, washing hands and sanitizing equipment after contact with poultry, and seeking medical attention if any flu-like symptoms develop after exposure to poultry.'**
  String get nnote;
}

class _AppLocalizationsDelegate extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  Future<AppLocalizations> load(Locale locale) {
    return SynchronousFuture<AppLocalizations>(lookupAppLocalizations(locale));
  }

  @override
  bool isSupported(Locale locale) => <String>['en', 'hi', 'pa'].contains(locale.languageCode);

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}

AppLocalizations lookupAppLocalizations(Locale locale) {


  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'en': return AppLocalizationsEn();
    case 'hi': return AppLocalizationsHi();
    case 'pa': return AppLocalizationsPa();
  }

  throw FlutterError(
    'AppLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
    'an issue with the localizations generation tool. Please file an issue '
    'on GitHub with a reproducible sample app and the gen-l10n configuration '
    'that was used.'
  );
}
