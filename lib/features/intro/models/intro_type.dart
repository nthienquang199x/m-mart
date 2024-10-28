import 'package:m_mart/app/theme/icons.dart';
import 'package:m_mart/core/localization/app_locale.dart';

enum IntroType {
  welcome,
  first,
  second,
  third;

  String get title {
    switch (this) {
      case IntroType.welcome:
        return AppLocale.welcome_to_m_mart;
      case IntroType.first:
        return AppLocale.discover_something_new;
      case IntroType.second:
        return AppLocale.update_trendy_outfit;
      case IntroType.third:
        return AppLocale.explore_your_true_style;
    }
  }

  String get subTitle {
    switch (this) {
      case IntroType.welcome:
        return AppLocale.the_home_for_a_fashion;
      case IntroType.first:
        return AppLocale.special_new_arrivals_just_for_you;
      case IntroType.second:
        return AppLocale.favorite_brands_and_hottest_trends;
      case IntroType.third:
        return AppLocale.relax_and_let_us_bring_the_style_to_you;
    }
  }

  String get image {
    switch (this) {
      case IntroType.welcome:
        return AppImages.img_intro_welcome;
      case IntroType.first:
        return AppImages.img_intro_first;
      case IntroType.second:
        return AppImages.img_intro_second;
      case IntroType.third:
        return AppImages.img_intro_third;
    }
  }
}
