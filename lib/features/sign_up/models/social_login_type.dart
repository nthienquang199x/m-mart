import 'package:m_mart/app/theme/icons.dart';

enum SocialLoginType {
  apple,
  google,
  facebook;

  String get icon {
    switch (this) {
      case SocialLoginType.apple:
        return AppIcons.ic_login_apple;
      case SocialLoginType.google:
        return AppIcons.ic_login_google;
      case SocialLoginType.facebook:
        return AppIcons.ic_login_facebook;
    }
  }
}
