import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sickler/constants.dart';
import 'package:sickler/global_components/scaffold_body_with_top_image.dart';
import '../../global_components/circular_add_button.dart';
import '../../global_components/sickler_circular_percent_indicator.dart';
import '../waterscreen/components/sickler_bar_charts.dart';
import '../waterscreen/components/week_average.dart';

class HbScreen extends StatefulWidget {
  static const String id = "hb screen";
  const HbScreen({Key? key}) : super(key: key);

  @override
  _HbScreenState createState() => _HbScreenState();
}

class _HbScreenState extends State<HbScreen> {
  @override
  Widget build(BuildContext context) {
    return SicklerScaffoldBodyWithTopImage(
      showPageTitle: true,
      pageTitle: "Haemoglobin",
      topBgColour: kFuchsia20,
      showBackButton: true,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
        child: Column(
          children: [
            Align(
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
            Text(
              "Your HB increased sing your last measurement, keep doing what you are doing 😁😊",
              style: Theme.of(context).textTheme.bodyText2,
            ),
            const SizedBox(height: 40),

            ///Water Percentage
            const SicklerCircularPercentIndicator(
              progressColour: kGreen,
              progress: 1,
              animate: true,
              value: "12.7",
              unit: "g/dl",
            ),
            const SizedBox(height: 40),
            Text(
              "18 February 2022",
              style: Theme.of(context)
                  .textTheme
                  .bodyText2!
                  .copyWith(color: kDark60),
            ),
            const SizedBox(height: 40),

            ///Add Button
            SicklerAddButton(
              colour: kFuchsia,
              onPressed: () {},
            ),
            const SizedBox(height: 60),

            ///Hb Stats
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.only(left: kDefaultPadding),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Hb Stats",
                      style: Theme.of(context).textTheme.headline2,
                    ),
                    const SizedBox(height: 20),
                    const WeekAverage(
                      title: "This Month's average",
                      iconLink: "assets/svg/hb_icon.svg",
                      unit: "g/dl",
                      amount: "12.4",
                      colour: kFuchsia,
                      emoji: "😁",
                    )
                  ],
                ),
              ),
            ),
            const SizedBox(height: 20),

            ///Statistics Card
            const SicklerBarChartStats(),

            const SizedBox(
              height: 60,
            )
          ],
        ),
      ),
    );
  }
}
