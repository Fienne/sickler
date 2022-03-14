import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sickler/constants.dart';
import 'package:sickler/global_components/scaffold_body_with_top_image.dart';
import '../../global_components/circular_add_button.dart';
import '../../global_components/sickler_circular_percent_indicator.dart';
import 'components/sickler_bar_charts.dart';
import 'components/volume_drunk.dart';
import 'components/water_log_card.dart';
import 'components/week_average.dart';

class WaterScreen extends StatefulWidget {
  static const String id = "water screen";
  const WaterScreen({Key? key}) : super(key: key);

  @override
  _WaterScreenState createState() => _WaterScreenState();
}

class _WaterScreenState extends State<WaterScreen> {
  @override
  Widget build(BuildContext context) {
    return SicklerScaffoldBodyWithTopImage(
      showPageTitle: true,
      pageTitle: "Water",
      topBgColour: kBlue20,
      showBackButton: false,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: kDefaultPadding),
              child: Align(
                alignment: Alignment.centerRight,
                child: IconButton(
                  onPressed: () {
                    ///Todo: open settings
                  },
                  icon: SvgPicture.asset(
                    "assets/svg/cogwheel_icon.svg",
                    color: kDark60,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 4,
            ),

            ///Water Percentage
            const SicklerCircularPercentIndicator(
              progress: .67,
              animate: true,
              value: "64",
              unit: "%",
            ),
            const SizedBox(height: 40),
            const VolumeDrunk(volumeDrunk: "1,703 ml", volumeLeft: "1,243"),
            const SizedBox(height: 40),

            ///Add Button
            SicklerAddButton(
              onPressed: () {},
            ),
            const SizedBox(height: 60),

            ///Water Stats
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.only(left: kDefaultPadding),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Water Stats",
                      style: Theme.of(context).textTheme.headline2,
                    ),
                    const SizedBox(height: 20),
                    const WeekAverage(
                      amount: "1.64 L",
                      unit: "L",
                    )
                  ],
                ),
              ),
            ),
            const SizedBox(height: 20),

            ///Statistics Card
            const SicklerBarChartStats(),

            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.only(
                    left: kDefaultPadding,
                    top: kDefaultPadding2x,
                    bottom: kDefaultPadding),
                child: Text(
                  "Today So Far",
                  style: Theme.of(context).textTheme.headline2,
                ),
              ),
            ),

            ///Water log cards
            const Align(
              alignment: Alignment.centerLeft,
              child: WaterLogCard(
                time: "2:38 pm",
                volume: "500",
              ),
            ),
            const SizedBox(
              height: 60,
            )
          ],
        ),
      ),
    );
  }
}
