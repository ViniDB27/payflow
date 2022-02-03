import 'package:flutter/material.dart';
import 'package:payflow/shared/themes/app_colors.dart';
import 'package:payflow/shared/themes/app_text_styles.dart';
import 'package:payflow/shared/widgets/set_label_buttons/set_label_buttons.dart';

class BottomSheetWidget extends StatelessWidget {
  final String title;
  final String subtitle;

  final String primaryLabel;
  final String secondaryLabel;

  final VoidCallback onPrimaryPressed;
  final VoidCallback onSecondaryPressed;

  const BottomSheetWidget({
    required this.title,
    required this.subtitle,
    required this.primaryLabel,
    required this.secondaryLabel,
    required this.onPrimaryPressed,
    required this.onSecondaryPressed,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.shape,
      child: Column(
        children: [
          Expanded(
            child: Container(
              color: Colors.black.withOpacity(0.6),
            ),
          ),
          Column(
            children: [
              Text.rich(
                TextSpan(
                  style: TextStyles.buttonBoldHeading,
                  text: title,
                  children: [
                    TextSpan(
                      style: TextStyles.buttonHeading,
                      text: "\n$subtitle",
                    ),
                  ],
                ),
                textAlign: TextAlign.center,
              ),
              Container(
                height: 1,
                color: AppColors.stroke,
              ),
              SetLabelButtons(
                enabledPrimaryColor: true,
                primaryLabel: primaryLabel,
                secondaryLabel: secondaryLabel,
                onPrimaryPressed: onPrimaryPressed,
                onSecondaryPressed: onSecondaryPressed,
              )
            ],
          ),
        ],
      ),
    );
  }
}
