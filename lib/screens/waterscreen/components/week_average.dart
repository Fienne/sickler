import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../constants.dart';


class WeekAverage extends StatelessWidget {
  final String amount;
  final String? iconLink;
  final Color? colour;
  final String? title;
  
  const WeekAverage({
    Key? key, required this.amount, this.iconLink, this.colour, this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
         Text(
       title ?? "This week's average",
       style: Theme.of(context)
           .textTheme
           .bodyText2!
           .copyWith(color: kDark60),
     ),
     Row(
       mainAxisAlignment: MainAxisAlignment.start,
       children: [
         SvgPicture.asset(
         iconLink ??  "assets/svg/water_drop.svg",
           color: colour ?? kBlue,
         ),
         const SizedBox(width: 10),
         Text(
           "$amount L",
           style: Theme.of(context).textTheme.headline1,
         )
       ],
     ),
      ],
    );
  }
}