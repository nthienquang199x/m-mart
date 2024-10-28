import 'package:auto_route/auto_route.dart';
import 'package:flutter_neumorphic_plus/flutter_neumorphic.dart';

class BackAppBar extends StatelessWidget implements PreferredSizeWidget {
  const BackAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: NeumorphicButton(
        onPressed: () {
          context.maybePop();
        },
        margin: const EdgeInsets.all(10),
        padding: const EdgeInsets.all(4),
        style: NeumorphicStyle(
            lightSource: LightSource.top,
            shape: NeumorphicShape.flat,
            boxShape: const NeumorphicBoxShape.circle(),
            shadowDarkColor: Colors.grey.withOpacity(0.7),
            color: Colors.white),
        child: const Icon(
          Icons.arrow_back_ios_new_rounded,
          color: Color(0xFF1E3354),
          size: 20,
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
