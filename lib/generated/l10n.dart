// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values

class S {
  S();
  
  static S current;
  
  static const AppLocalizationDelegate delegate =
    AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false) ? locale.languageCode : locale.toString();
    final localeName = Intl.canonicalizedLocale(name); 
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      S.current = S();
      
      return S.current;
    });
  } 

  static S of(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `Login`
  String get starText {
    return Intl.message(
      'Login',
      name: 'starText',
      desc: '',
      args: [],
    );
  }

  /// `Email or Phone Number`
  String get emailText {
    return Intl.message(
      'Email or Phone Number',
      name: 'emailText',
      desc: '',
      args: [],
    );
  }

  /// `Password`
  String get passwordText {
    return Intl.message(
      'Password',
      name: 'passwordText',
      desc: '',
      args: [],
    );
  }

  /// `Enter`
  String get enterText {
    return Intl.message(
      'Enter',
      name: 'enterText',
      desc: '',
      args: [],
    );
  }

  /// `Register`
  String get registerText {
    return Intl.message(
      'Register',
      name: 'registerText',
      desc: '',
      args: [],
    );
  }

  /// `¿Forget your password?`
  String get quizText {
    return Intl.message(
      '¿Forget your password?',
      name: 'quizText',
      desc: '',
      args: [],
    );
  }

  /// `Inventory`
  String get nameText {
    return Intl.message(
      'Inventory',
      name: 'nameText',
      desc: '',
      args: [],
    );
  }

  /// `Enter the email you used to \nregister and we will send you \ninstructions to reset your password`
  String get descriptionText {
    return Intl.message(
      'Enter the email you used to \nregister and we will send you \ninstructions to reset your password',
      name: 'descriptionText',
      desc: '',
      args: [],
    );
  }

  /// `Recover Password`
  String get recoverText {
    return Intl.message(
      'Recover Password',
      name: 'recoverText',
      desc: '',
      args: [],
    );
  }

  /// `¿Olvidaste tu contraseña?`
  String get quiz1Text {
    return Intl.message(
      '¿Olvidaste tu contraseña?',
      name: 'quiz1Text',
      desc: '',
      args: [],
    );
  }

  /// `Name(s)`
  String get name1Text {
    return Intl.message(
      'Name(s)',
      name: 'name1Text',
      desc: '',
      args: [],
    );
  }

  /// `Last Name(s)`
  String get lastText {
    return Intl.message(
      'Last Name(s)',
      name: 'lastText',
      desc: '',
      args: [],
    );
  }

  /// `Date of birth: DD/MM/AAAA`
  String get dateText {
    return Intl.message(
      'Date of birth: DD/MM/AAAA',
      name: 'dateText',
      desc: '',
      args: [],
    );
  }

  /// `Enter your password`
  String get enterPassText {
    return Intl.message(
      'Enter your password',
      name: 'enterPassText',
      desc: '',
      args: [],
    );
  }

  /// `Create A New Account`
  String get enterCreateText {
    return Intl.message(
      'Create A New Account',
      name: 'enterCreateText',
      desc: '',
      args: [],
    );
  }

  /// `Add a Furniture`
  String get furnitureText {
    return Intl.message(
      'Add a Furniture',
      name: 'furnitureText',
      desc: '',
      args: [],
    );
  }

  /// `Add`
  String get addText {
    return Intl.message(
      'Add',
      name: 'addText',
      desc: '',
      args: [],
    );
  }

  /// `Descriptions`
  String get descriptionsText {
    return Intl.message(
      'Descriptions',
      name: 'descriptionsText',
      desc: '',
      args: [],
    );
  }

  /// `Inventory Control`
  String get inventoryText {
    return Intl.message(
      'Inventory Control',
      name: 'inventoryText',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'es', countryCode: 'PE'),
      Locale.fromSubtags(languageCode: 'pt', countryCode: 'BR'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    if (locale != null) {
      for (var supportedLocale in supportedLocales) {
        if (supportedLocale.languageCode == locale.languageCode) {
          return true;
        }
      }
    }
    return false;
  }
}