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

  const SicklerAppBar({
    Key? key,
    this.preferredSize = const Size.fromHeight(92),
    this.iconColor,
    this.leading,
    this.showActions = true,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      //leadingWidth: relWidth(kDefaultPadding2x + 50, context),
      toolbarHeight: preferredSize.height,
      leading: leading,
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
