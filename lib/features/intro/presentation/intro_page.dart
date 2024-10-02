import 'package:blurrycontainer/blurrycontainer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_carousel_widget/flutter_carousel_widget.dart';
import 'package:m_mart/core/localization/app_locale.dart';
import 'package:m_mart/features/intro/models/intro_type.dart';
import 'package:m_mart/utils/extension/context_ext.dart';
import 'package:m_mart/utils/widget/spacer_widget.dart';

class IntroPage extends StatefulWidget {
  const IntroPage({super.key});

  @override
  State<IntroPage> createState() => _IntroPageState();
}

class _IntroPageState extends State<IntroPage> {
  late IntroType type = IntroType.welcome;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: type == IntroType.welcome ? _buildWelcomePage(context) : _buildIntroPage(context),
    );
  }

  Stack _buildWelcomePage(BuildContext context) {
    return Stack(
      children: [
        Image.asset(type.image),
        Container(
          color: Colors.black.withOpacity(0.5),
        ),
        Positioned.fill(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                type.title.tr(context),
                style: context.myTheme.textThemeT1.body.copyWith(fontSize: 25, color: Colors.white),
              ),
              const VSpacing(
                spacing: 20,
              ),
              Text(
                type.subTitle.tr(context),
                style: context.myTheme.textThemeT1.body.copyWith(fontSize: 16, color: Colors.white),
              ),
              const VSpacing(
                spacing: 48,
              ),
              CustomIntroButton(
                title: AppLocale.get_started.tr(context),
                onTap: () {
                  setState(() {
                    type = IntroType.first;
                  });
                },
              ),
              const VSpacing(
                spacing: 100,
              )
            ],
          ),
        )
      ],
    );
  }

  Stack _buildIntroPage(BuildContext context) {
    final items = IntroType.values.where((e) => e != IntroType.welcome).toList();
    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        Positioned(
          bottom: 0,
          child: Container(
            height: context.screenHeight * 351 / 812,
            width: context.screenWidth,
            color: const Color(0xFF464447),
          ),
        ),
        Positioned.fill(
            child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              type.title.tr(context),
              style: context.myTheme.textThemeT1.title.copyWith(fontSize: 20),
            ),
            const VSpacing(
              spacing: 17,
            ),
            Text(
              type.subTitle.tr(context),
              style: context.myTheme.textThemeT1.body.copyWith(fontSize: 14),
            ),
            const VSpacing(
              spacing: 30,
            ),
            SizedBox(
              height: context.screenHeight * 368 / 812,
              width: context.screenWidth,
              child: FlutterCarousel.builder(
                  itemCount: items.length,
                  itemBuilder: (context, index, realIndex) {
                    final item = items[realIndex];
                    return Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        FractionallySizedBox(
                          heightFactor: 264 / 368,
                          child: AspectRatio(
                            aspectRatio: 32 / 264,
                            child: Container(
                              decoration: BoxDecoration(
                                  color: realIndex != 0 ? const Color(0xFFE7E8E9) : Colors.transparent,
                                  borderRadius: const BorderRadius.only(
                                      topRight: Radius.circular(10), bottomRight: Radius.circular(10))),
                            ),
                          ),
                        ),
                        AspectRatio(
                          aspectRatio: 261 / 368,
                          child: Container(
                            decoration:
                                BoxDecoration(borderRadius: BorderRadius.circular(10), color: const Color(0xFFE7E8E9)),
                            child: Image.asset(item.image),
                          ),
                        ),
                        FractionallySizedBox(
                          heightFactor: 264 / 368,
                          child: AspectRatio(
                            aspectRatio: 32 / 264,
                            child: Container(
                              decoration: BoxDecoration(
                                  color: realIndex != IntroType.values.length - 1
                                      ? const Color(0xFFE7E8E9)
                                      : Colors.transparent,
                                  borderRadius: const BorderRadius.only(
                                      topLeft: Radius.circular(10), bottomLeft: Radius.circular(10))),
                            ),
                          ),
                        )
                      ],
                    );
                  },
                  options: FlutterCarouselOptions(
                    viewportFraction: 1,
                    showIndicator: false,
                    onPageChanged: (index, reason) {
                      setState(() {
                        type = items[index];
                      });
                    },
                  )),
            ),
            const VSpacing(
              spacing: 57,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: IntroType.values
                  .where((e) => e != IntroType.welcome)
                  .map((e) => Container(
                        width: 8,
                        height: 8,
                        margin: const EdgeInsets.symmetric(horizontal: 4),
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: type == e ? Colors.white : Colors.transparent,
                            border: Border.all(color: Colors.white)),
                      ))
                  .toList(),
            ),
            const VSpacing(
              spacing: 27,
            ),
            CustomIntroButton(
              title: AppLocale.shopping_now.tr(context),
              onTap: () {},
            )
          ],
        )),
      ],
    );
  }
}

class CustomIntroButton extends StatelessWidget {
  const CustomIntroButton({
    super.key,
    required this.title,
    this.onTap,
  });
  final String title;
  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white.withOpacity(0.25),
          border: Border.all(width: 1, color: Colors.white),
          borderRadius: const BorderRadius.all(Radius.circular(200))),
      child: Material(
        borderRadius: const BorderRadius.all(Radius.circular(200)),
        color: Colors.transparent,
        child: InkWell(
          borderRadius: const BorderRadius.all(Radius.circular(200)),
          onTap: onTap,
          child: BlurryContainer(
              padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 15),
              borderRadius: const BorderRadius.all(Radius.circular(200)),
              shadowColor: Colors.transparent,
              blur: 4,
              child: Text(
                title,
                style: context.myTheme.textThemeT1.title
                    .copyWith(fontWeight: FontWeight.w700, fontSize: 16, color: Colors.white),
              )),
        ),
      ),
    );
  }
}
