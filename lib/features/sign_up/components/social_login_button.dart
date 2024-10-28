import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../models/social_login_type.dart';

class SocialLoginButton extends StatelessWidget {
  const SocialLoginButton({
    super.key,
    required this.onTap,
  });
  final Function(SocialLoginType type) onTap;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: SocialLoginType.values
          .map((e) => Padding(
                padding: const EdgeInsets.symmetric(horizontal: 5),
                child: IconButton(
                  onPressed: () {
                    onTap(e);
                  },
                  icon: SvgPicture.asset(e.icon),
                ),
              ))
          .toList(),
    );
  }
}
