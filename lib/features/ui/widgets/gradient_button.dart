// widget folder contains all widgets that are used in more than one page

import 'package:flutter/cupertino.dart';
import 'package:test_task/assets/colors.dart';
import 'package:test_task/assets/sizes.dart';
import 'package:test_task/assets/text_styles.dart';

class GradientButton extends StatelessWidget {
  const GradientButton({
    super.key,
    required this.buttonText,
  });

  final String buttonText;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(Sizes.p999),
        gradient: const LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            AppColors.blue,
            AppColors.blueInactive,
          ],
        ),
      ),
      child: CupertinoButton(
        child: Text(
          buttonText,
          style: AppTextStyles.s20w400.apply(color: AppColors.white),
        ),
        onPressed: () {},
      ),
    );
  }
}
