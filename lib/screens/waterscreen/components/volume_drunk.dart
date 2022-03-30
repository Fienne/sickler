import 'package:flutter/material.dart';

import '../../../constants.dart';

class VolumeDrunk extends StatefulWidget {
  final int? oldVal;
  final int newVal;
  final String volumeDrunk;
  final String volumeLeft;
  const VolumeDrunk(
      {Key? key, required this.volumeDrunk, required this.volumeLeft,  this.oldVal, required this.newVal})
      : super(key: key);

  @override
  State<VolumeDrunk> createState() => _VolumeDrunkState();
}

class _VolumeDrunkState extends State<VolumeDrunk>
    with SingleTickerProviderStateMixin {
  // AnimationController? controller;

  // @override
  // void initState() {
  //   super.initState();

  //   controller = AnimationController(
  //    // lowerBound: VolumeDrunk,
  //     upperBound: widget.newVal.toDouble(),
  //     vsync: this,
  //     duration: Duration(milliseconds: 300),
  //   );

  //   //controller!.forward();
  //   controller!.addListener(() {
  //     setState(() {
        
  //     });
  //     print(controller!.value);
  //   });
  // }


// @override
//   void dispose() {
//     controller!.dispose();
//     super.dispose();
//   }
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
         widget.volumeDrunk,
          style: Theme.of(context).textTheme.headline1!.copyWith(fontSize: 36),
        ),
        Text(
          "Remaining: ${widget.volumeLeft} ml",
          style:
              Theme.of(context).textTheme.bodyText2!.copyWith(color: kDark60),
        ),
      ],
    );
  }
}
