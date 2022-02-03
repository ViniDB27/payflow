import 'package:flutter/material.dart';
import 'package:payflow/shared/themes/app_colors.dart';

class DividerWidget extends StatelessWidget {
  const DividerWidget({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: double.maxFinite,
        color: AppColors.stroke,
    );
  }
}