import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sickler/constants.dart';

class SicklerAppBar extends StatelessWidget with PreferredSizeWidget {
  @override
  final Size preferredSize;
  final Color? iconColor;
  final Widget? leading;
  final bool? showActions;
  final bool? showBackButton;

  const SicklerAppBar({
    Key? key,
    this.preferredSize = const Size.fromHeight(92),
    this.iconColor,
    this.leading,
    this.showActions = true,
    this.showBackButton = true,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      //leadingWidth: relWidth(kDefaultPadding2x + 50, context),
      toolbarHeight: preferredSize.height,
      leading: leading ??
          (showBackButton!
              ? Padding(
                  padding: const EdgeInsets.only(
                      left: kDefaultPadding, top: kDefaultPadding2x),
                  child: IconButton(
                      onPressed: () {
                        HapticFeedback.lightImpact();
                        Feedback.forTap(context);
                        Navigator.pop(context);
                      },
                      icon: SvgPicture.asset("assets/svg/back_icon.svg")),
                )
              : null),
      actions: showActions == true
          ? [
              IconButton(
                padding: const EdgeInsets.only(
                    right: kDefaultPadding, top: kDefaultPadding2x),
                onPressed: () {
                  HapticFeedback.lightImpact();
                  Feedback.forTap(context);
                  Scaffold.of(context).openEndDrawer();
                },
                icon: SvgPicture.asset(
                  "assets/svg/menu_icon.svg",
                  color: iconColor ?? Theme.of(context).iconTheme.color,
                ),
              ),
            ]
          : null,
    );
  }
}
