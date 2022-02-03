import 'package:flutter/material.dart';
import 'package:payflow/shared/themes/app_text_styles.dart';
import 'package:payflow/shared/widgets/label_button/label_button.dart';

class SetLabelButtons extends StatelessWidget {
  final String primaryLabel;
  final String secondaryLabel;

  final VoidCallback onPrimaryPressed;
  final VoidCallback onSecondaryPressed;

  final bool enabledPrimaryColor;

  const SetLabelButtons({
    required this.primaryLabel,
    required this.secondaryLabel,
    required this.onPrimaryPressed,
    required this.onSecondaryPressed,
    this.enabledPrimaryColor = false,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 56,
      child: Row(
        children: [
          Expanded(
            child: LabelButton(
              label: primaryLabel,
              onPressed: onPrimaryPressed,
              style: enabledPrimaryColor ? TextStyles.buttonPrimary : null,
            ),
          ),
          Expanded(
            child: LabelButton(
              label: secondaryLabel,
              onPressed: onSecondaryPressed,
            ),
          ),
        ],
      ),
    );
  }
}
