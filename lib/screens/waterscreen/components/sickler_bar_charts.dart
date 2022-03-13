import 'package:flutter/material.dart';

import '../../../constants.dart';


class SicklerBarChartStats extends StatelessWidget {
  const SicklerBarChartStats({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: double.infinity,
      decoration: BoxDecoration(
          color: kBlue20,
          borderRadius: BorderRadius.circular(kDefaultPadding + 6)),
    );
  }
}

