import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../constants.dart';



class WaterLogCard extends StatelessWidget {
  final String volume;
  final String time;
  final String? iconLink;
  final Color? colour;
  const WaterLogCard({
    Key? key,
    required this.volume,
    required this.time,
    this.iconLink,
    this.colour,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;
    return Container(
      padding: const EdgeInsets.all(kDefaultPadding - 4),
      width: (screenSize.width - (kDefaultPadding * 3)) * .5,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Theme.of(context).cardColor,
      ),
      child: Row(
        children: [
          Expanded(
            flex: 1,

            ///Todo: change this link to water cup
            child: SvgPicture.asset(
              iconLink ?? "assets/svg/water_drop.svg",
              color: kBlue,
            ),
          ),
          Expanded(
            flex: 2,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: volume,
                        style: Theme.of(context)
                            .textTheme
                            .headline1!
                            .copyWith(color: kBlue, height: 1.2),
                      ),
                      TextSpan(
                        text: "ml",
                        style: Theme.of(context)
                            .textTheme
                            .bodyText2!
                            .copyWith(color: kBlue),
                      ),
                    ],
                  ),
                ),
                RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                          text: time,
                          style: kFootNote.copyWith(
                              color:
                                  Theme.of(context).textTheme.bodyText2!.color,
                              fontWeight: FontWeight.bold)),
                      TextSpan(
                        text: " today",
                        style: kFootNote.copyWith(
                            color:
                                Theme.of(context).textTheme.bodyText2!.color),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
