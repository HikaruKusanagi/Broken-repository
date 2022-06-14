
import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'app_localizations_en.dart';
import 'app_localizations_ja.dart';

/// Callers can lookup localized strings with an instance of AppLocalizations returned
/// by `AppLocalizations.of(context)`.
///
/// Applications need to include `AppLocalizations.delegate()` in their app's
/// localizationDelegates list, and the locales they support in the app's
/// supportedLocales list. For example:
///
/// ```
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
/// ```
/// dependencies:
///   # Internationalization support.
///   flutter_localizations:
///     sdk: flutter
///   intl: any # Use the pinned version from flutter_localizations
///
///   # rest of dependencies
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
    Locale('ja')
  ];

  /// No description provided for @japanese.
  ///
  /// In en, this message translates to:
  /// **'Japanese'**
  String get japanese;

  /// No description provided for @multilingual.
  ///
  /// In en, this message translates to:
  /// **'Multilingual'**
  String get multilingual;

  /// No description provided for @hokkaido.
  ///
  /// In en, this message translates to:
  /// **'Hokkaido'**
  String get hokkaido;

  /// No description provided for @aomori.
  ///
  /// In en, this message translates to:
  /// **'Aomori'**
  String get aomori;

  /// No description provided for @iwate.
  ///
  /// In en, this message translates to:
  /// **'Iwate'**
  String get iwate;

  /// No description provided for @miyagi.
  ///
  /// In en, this message translates to:
  /// **'Miyagi'**
  String get miyagi;

  /// No description provided for @akita.
  ///
  /// In en, this message translates to:
  /// **'Akita'**
  String get akita;

  /// No description provided for @yamagata.
  ///
  /// In en, this message translates to:
  /// **'Yamagata'**
  String get yamagata;

  /// No description provided for @ibaraki.
  ///
  /// In en, this message translates to:
  /// **'Ibaraki'**
  String get ibaraki;

  /// No description provided for @tochigi.
  ///
  /// In en, this message translates to:
  /// **'Iochigi'**
  String get tochigi;

  /// No description provided for @gunma.
  ///
  /// In en, this message translates to:
  /// **'Gunma'**
  String get gunma;

  /// No description provided for @saitama.
  ///
  /// In en, this message translates to:
  /// **'Saitama'**
  String get saitama;

  /// No description provided for @chiba.
  ///
  /// In en, this message translates to:
  /// **'Chiba'**
  String get chiba;

  /// No description provided for @tokyo.
  ///
  /// In en, this message translates to:
  /// **'Tokyo'**
  String get tokyo;

  /// No description provided for @kanagawa.
  ///
  /// In en, this message translates to:
  /// **'Kanagawa'**
  String get kanagawa;

  /// No description provided for @niigata.
  ///
  /// In en, this message translates to:
  /// **'Niigata'**
  String get niigata;

  /// No description provided for @toyama.
  ///
  /// In en, this message translates to:
  /// **'Toyama'**
  String get toyama;

  /// No description provided for @ishikawa.
  ///
  /// In en, this message translates to:
  /// **'Ishikawa'**
  String get ishikawa;

  /// No description provided for @fukui.
  ///
  /// In en, this message translates to:
  /// **'Fukui'**
  String get fukui;

  /// No description provided for @yamanashi.
  ///
  /// In en, this message translates to:
  /// **'Yamanashi'**
  String get yamanashi;

  /// No description provided for @nagano.
  ///
  /// In en, this message translates to:
  /// **'Nagano'**
  String get nagano;

  /// No description provided for @gifu.
  ///
  /// In en, this message translates to:
  /// **'Gifu'**
  String get gifu;

  /// No description provided for @shizuoka.
  ///
  /// In en, this message translates to:
  /// **'Shizuoka'**
  String get shizuoka;

  /// No description provided for @aichi.
  ///
  /// In en, this message translates to:
  /// **'Aichi'**
  String get aichi;

  /// No description provided for @mie.
  ///
  /// In en, this message translates to:
  /// **'Mie'**
  String get mie;

  /// No description provided for @shiga.
  ///
  /// In en, this message translates to:
  /// **'Shiga'**
  String get shiga;

  /// No description provided for @kyoto.
  ///
  /// In en, this message translates to:
  /// **'Kyoto'**
  String get kyoto;

  /// No description provided for @osaka.
  ///
  /// In en, this message translates to:
  /// **'Osaka'**
  String get osaka;

  /// No description provided for @hyogo.
  ///
  /// In en, this message translates to:
  /// **'Hyogo'**
  String get hyogo;

  /// No description provided for @nara.
  ///
  /// In en, this message translates to:
  /// **'Nara'**
  String get nara;

  /// No description provided for @wakayama.
  ///
  /// In en, this message translates to:
  /// **'Wakayama'**
  String get wakayama;

  /// No description provided for @tottori.
  ///
  /// In en, this message translates to:
  /// **'tottori'**
  String get tottori;

  /// No description provided for @shimane.
  ///
  /// In en, this message translates to:
  /// **'shimane'**
  String get shimane;

  /// No description provided for @okayama.
  ///
  /// In en, this message translates to:
  /// **'okayama'**
  String get okayama;

  /// No description provided for @hiroshima.
  ///
  /// In en, this message translates to:
  /// **'hiroshima'**
  String get hiroshima;

  /// No description provided for @yamaguchi.
  ///
  /// In en, this message translates to:
  /// **'yamaguchi'**
  String get yamaguchi;

  /// No description provided for @tokushima.
  ///
  /// In en, this message translates to:
  /// **'tokushima'**
  String get tokushima;

  /// No description provided for @kagawa.
  ///
  /// In en, this message translates to:
  /// **'kagawa'**
  String get kagawa;

  /// No description provided for @ehime.
  ///
  /// In en, this message translates to:
  /// **'ehime'**
  String get ehime;

  /// No description provided for @kochi.
  ///
  /// In en, this message translates to:
  /// **'kochi'**
  String get kochi;

  /// No description provided for @fukuoka.
  ///
  /// In en, this message translates to:
  /// **'fukuoka'**
  String get fukuoka;

  /// No description provided for @saga.
  ///
  /// In en, this message translates to:
  /// **'saga'**
  String get saga;

  /// No description provided for @nagasaki.
  ///
  /// In en, this message translates to:
  /// **'nagasaki'**
  String get nagasaki;

  /// No description provided for @kumamoto.
  ///
  /// In en, this message translates to:
  /// **'kumamoto'**
  String get kumamoto;

  /// No description provided for @oita.
  ///
  /// In en, this message translates to:
  /// **'oita'**
  String get oita;

  /// No description provided for @miyazaki.
  ///
  /// In en, this message translates to:
  /// **'miyazaki'**
  String get miyazaki;

  /// No description provided for @kagoshima.
  ///
  /// In en, this message translates to:
  /// **'kagoshima'**
  String get kagoshima;

  /// No description provided for @okinawa.
  ///
  /// In en, this message translates to:
  /// **'okinawa'**
  String get okinawa;
}

class _AppLocalizationsDelegate extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  Future<AppLocalizations> load(Locale locale) {
    return SynchronousFuture<AppLocalizations>(lookupAppLocalizations(locale));
  }

  @override
  bool isSupported(Locale locale) => <String>['en', 'ja'].contains(locale.languageCode);

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}

AppLocalizations lookupAppLocalizations(Locale locale) {


  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'en': return AppLocalizationsEn();
    case 'ja': return AppLocalizationsJa();
  }

  throw FlutterError(
    'AppLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
    'an issue with the localizations generation tool. Please file an issue '
    'on GitHub with a reproducible sample app and the gen-l10n configuration '
    'that was used.'
  );
}
