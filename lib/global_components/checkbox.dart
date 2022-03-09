import 'package:flutter/material.dart';

class SicklerCheckbox extends StatefulWidget {
  final Color colour;
  // final bool? value;
  // final VoidCallback onChanged;
  const SicklerCheckbox({Key? key, required this.colour}) : super(key: key);

  @override
  State<SicklerCheckbox> createState() => _SicklerCheckboxState();
}

class _SicklerCheckboxState extends State<SicklerCheckbox> {
  @override
  Widget build(BuildContext context) {
    return Transform.scale(
      scale: 1.5,
      child: Checkbox(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(7)),
        side: BorderSide(
          color: widget.colour,
          width: 1.8,
        ),
        visualDensity: VisualDensity.comfortable,

        ///Todo: Make this checkbox widget work
        value: false,
        activeColor: widget.colour,
        onChanged: (bool? value) {},
      ),
    );
  }
}
