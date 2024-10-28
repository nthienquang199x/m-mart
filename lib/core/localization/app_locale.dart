// ignore_for_file: constant_identifier_names

import 'package:flutter/material.dart';
import 'package:flutter_localization/flutter_localization.dart';

final FlutterLocalization localization = FlutterLocalization.instance;

enum AppLanguage {
  en;

  String get languageCode {
    switch (this) {
      case AppLanguage.en:
        return "en";
    }
  }

  MapLocale get defaultLocale {
    switch (this) {
      case AppLanguage.en:
        return MapLocale(languageCode, AppLocale.EN, countryCode: "US");
    }
  }
}

extension StringExt on String {
  String tr(BuildContext context) {
    return getString(context);
  }
}

mixin class AppLocale {
  // Intro
  static const String welcome_to_m_mart = 'welcome_to_m_mart';
  static const String the_home_for_a_fashion = 'the_home_for_a_fashion';
  static const String get_started = 'get_started';
  static const String discover_something_new = 'discover_something_new';
  static const String update_trendy_outfit = 'update_trendy_outfit';
  static const String explore_your_true_style = 'explore_your_true_style';
  static const String special_new_arrivals_just_for_you = 'special_new_arrivals_just_for_you';
  static const String favorite_brands_and_hottest_trends = 'favorite_brands_and_hottest_trends';
  static const String relax_and_let_us_bring_the_style_to_you = 'relax_and_let_us_bring_the_style_to_you';
  static const String shopping_now = 'shopping_now';

  static const Map<String, dynamic> EN = {
    welcome_to_m_mart: 'Welcome to M-Mart',
    the_home_for_a_fashion: 'The home for a fashion',
    get_started: 'Get Started',
    discover_something_new: 'Discover something new',
    update_trendy_outfit: 'Update trendy outfit',
    explore_your_true_style: 'Explore your true style',
    special_new_arrivals_just_for_you: 'Special new arrivals just for you',
    favorite_brands_and_hottest_trends: 'Favorite brands and hottest trends',
    relax_and_let_us_bring_the_style_to_you: 'Relax and let us bring the style to you',
    shopping_now: 'Shopping Now'
  };

  void init({required List<MapLocale> mapLocales, AppLanguage initLanguage = AppLanguage.en}) {
    localization.onTranslatedLanguage = onTranslatedLanguage;
    localization.init(mapLocales: mapLocales, initLanguageCode: initLanguage.languageCode);
  }

  void onTranslatedLanguage(Locale? locale) {}
}
