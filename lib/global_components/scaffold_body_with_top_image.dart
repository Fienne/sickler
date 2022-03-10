import 'package:flutter/material.dart';

import '../constants.dart';

class SicklerScaffoldBodyWithTopImage extends StatelessWidget {
  final Widget child;
  final String? topBgImageLink;
  final Color? topBgColour;
  const SicklerScaffoldBodyWithTopImage(
      {Key? key, required this.child, this.topBgColour, this.topBgImageLink})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Stack(
        children: [
          Positioned(
            top: 0,
            child: Container(
              decoration: BoxDecoration(
                color: topBgColour,
                image: topBgImageLink != null
                    ? DecorationImage(
                        image: AssetImage(topBgImageLink!),
                      )
                    : null,
              ),
              height: screenSize.height * .3,
              width: double.infinity,
            ),
          ),
          Positioned(
            top: screenSize.height * .25,
            child: Container(
              decoration: BoxDecoration(
                color: Theme.of(context).scaffoldBackgroundColor,
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(kDefaultPadding2x),
                  topRight: Radius.circular(kDefaultPadding2x),
                ),
              ),
              width: double.infinity,
              child: child,
            ),
          ),
        ],
      ),
    );
  }
}
