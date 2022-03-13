import 'package:flutter/material.dart';

import '../../../constants.dart';

class VolumeDrunk extends StatelessWidget {
  final String volumeDrunk;
  final String volumeLeft;
  const VolumeDrunk(
      {Key? key, required this.volumeDrunk, required this.volumeLeft})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          volumeDrunk,
          style: Theme.of(context).textTheme.headline1!.copyWith(fontSize: 36),
        ),
        Text(
          "Remaining: $volumeLeft ml",
          style:
              Theme.of(context).textTheme.bodyText2!.copyWith(color: kDark60),
        ),
      ],
    );
  }
}
