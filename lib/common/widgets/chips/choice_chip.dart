import 'package:flutter/material.dart';
import 'package:pakcraftstore/common/widgets/custom_shapes/countainers/rounded_container.dart';
import 'package:pakcraftstore/utils/helpers/helper_functions.dart';

import '../../../utils/constants/colors.dart';

class TChoiceChip extends StatelessWidget {
  const TChoiceChip({
    super.key,
    required this.text,
    required this.selected,
    this.onSelected,
  });

  final String text;
  final bool selected;
  final void Function(bool)? onSelected;

  @override
  Widget build(BuildContext context) {
    final isColor = THelperFunctions.getColor(text) != null;
    //TLogger.debug("isColor: $isColor :  ${THelperFunctions.getColor(text)}");
    return Theme(
      data: Theme.of(context).copyWith(canvasColor: Colors.transparent),
      child: ChoiceChip(
        label: isColor ? const SizedBox() : Text(text),
        selected: selected,
        onSelected: onSelected,
        labelStyle: TextStyle(color: selected ? TColors.white : null),
        avatar: isColor
            ? TRoundedContainer(
                width: 50,
                height: 50,
                backgroundColor: THelperFunctions.getColor(text)!)
            : null,
        shape: isColor ? const CircleBorder() : null,
        labelPadding: THelperFunctions.getColor(text) != null
            ? const EdgeInsets.all(0)
            : null,
        padding: isColor ? const EdgeInsets.all(0) : null,
        //selectedColor: isColor ? THelperFunctions.getColor(text)! : null,
        backgroundColor: isColor ? THelperFunctions.getColor(text)! : null,
      ),
    );
  }
}
