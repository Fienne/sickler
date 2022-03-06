import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sickler/constants.dart';

class SicklerAppBar extends StatelessWidget with PreferredSizeWidget {
  @override
  final Size preferredSize;
  final Widget? leading;
  final Color? iconColor;

  const SicklerAppBar({
    Key? key,
    this.preferredSize = const Size.fromHeight(120),
    this.leading,
    this.iconColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: preferredSize.height,
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(
                left: kDefaultPadding2x, top: kDefaultPadding2x + 16),
            child: leading,
          ),
          Padding(
            padding: const EdgeInsets.only(
                right: kDefaultPadding, top: kDefaultPadding2x + 16),
            child: IconButton(
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
          ),
        ],
      ),
    );
  }
}
