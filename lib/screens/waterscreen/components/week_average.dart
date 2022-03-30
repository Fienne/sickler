import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../constants.dart';

class WeekAverage extends StatelessWidget {
  final String amount;
  final String? iconLink;
  final Color? colour;
  final String? title;
  final String? emoji;
  final String? unit;

  const WeekAverage({
    Key? key,
    required this.amount,
    this.iconLink,
    this.colour,
    this.title,
    this.emoji,
    this.unit,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title ?? "This week's average",
          style:
              Theme.of(context).textTheme.bodyText2!.copyWith(color: kDark60),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SvgPicture.asset(
              iconLink ?? "assets/svg/water_drop.svg",
              color: colour ?? kBlue,
            ),
            const SizedBox(width: 10),
            RichText(
              text: TextSpan(children: [
                TextSpan(
                  text: "$amount ",
                  style: Theme.of(context).textTheme.headline1,
                ),
                TextSpan(
                  text: unit,
                  style: Theme.of(context).textTheme.bodyText2!.copyWith(
                      color: colour ??
                          Theme.of(context).textTheme.bodyText2!.color),
                )
              ]),
            ),
            const SizedBox(
              width: 5,
            ),
            Text(
              emoji ?? "",
              style: Theme.of(context).textTheme.headline1,
            ),
          ],
        ),
      ],
    );
  }
}
