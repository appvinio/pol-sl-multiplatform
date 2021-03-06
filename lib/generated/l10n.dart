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
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(_current != null,
        'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(instance != null,
        'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?');
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `Pogoda`
  String get weather {
    return Intl.message(
      'Pogoda',
      name: 'weather',
      desc: '',
      args: [],
    );
  }

  /// `Ups. Coś poszło nie tak.`
  String get defaultError {
    return Intl.message(
      'Ups. Coś poszło nie tak.',
      name: 'defaultError',
      desc: '',
      args: [],
    );
  }

  /// `Nie udało się pobrać aktualnej pogody.`
  String get getCurrentWeatherError {
    return Intl.message(
      'Nie udało się pobrać aktualnej pogody.',
      name: 'getCurrentWeatherError',
      desc: '',
      args: [],
    );
  }

  /// `Spróbuj ponownie`
  String get tryAgain {
    return Intl.message(
      'Spróbuj ponownie',
      name: 'tryAgain',
      desc: '',
      args: [],
    );
  }

  /// `Wilgotność`
  String get humidity {
    return Intl.message(
      'Wilgotność',
      name: 'humidity',
      desc: '',
      args: [],
    );
  }

  /// `Widoczność`
  String get visibility {
    return Intl.message(
      'Widoczność',
      name: 'visibility',
      desc: '',
      args: [],
    );
  }

  /// `Ciśnienie`
  String get pressure {
    return Intl.message(
      'Ciśnienie',
      name: 'pressure',
      desc: '',
      args: [],
    );
  }

  /// `%`
  String get percentChar {
    return Intl.message(
      '%',
      name: 'percentChar',
      desc: '',
      args: [],
    );
  }

  /// `km`
  String get km {
    return Intl.message(
      'km',
      name: 'km',
      desc: '',
      args: [],
    );
  }

  /// `hPa`
  String get hPa {
    return Intl.message(
      'hPa',
      name: 'hPa',
      desc: '',
      args: [],
    );
  }

  /// `Zmień miasto`
  String get changeCity {
    return Intl.message(
      'Zmień miasto',
      name: 'changeCity',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'pl'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
