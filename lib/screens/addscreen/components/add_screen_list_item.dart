import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../constants.dart';
import '../../../size_config.dart';

class AddScreenListItem extends StatelessWidget {
  final Color colour;
  final Color bgColour;
  final String iconLink;
  final String title;
  final VoidCallback onPressed;

  const AddScreenListItem({
    Key? key,
    required this.colour,
    required this.bgColour,
    required this.iconLink,
    required this.title,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        HapticFeedback.lightImpact();
        Feedback.forTap(context);
        onPressed;
      },
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: kDefaultPadding / 2),
        height: 72,
        decoration: BoxDecoration(
          color: bgColour,
          borderRadius: BorderRadius.circular(24),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: kDefaultPadding),
              child: SvgPicture.asset(
                iconLink,
                color: colour,
              ),
            ),
            SizedBox(
              width: relWidth(kDefaultPadding, context),
            ),
            Expanded(
              flex: 2,
              child: Text(
                title,
                style: Theme.of(context).textTheme.bodyText1,
              ),
            ),
            IconButton(
              onPressed: () {
                onPressed;
              },
              icon: SvgPicture.asset(
                "assets/svg/forward_icon.svg",
                color: Theme.of(context).iconTheme.color,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
