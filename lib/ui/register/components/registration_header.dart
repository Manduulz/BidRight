import 'package:bid_right_mobile/util/theme.dart';
import 'package:flutter/material.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';

const totalSteps = 5;

class RegistrationHeader extends StatelessWidget {
  const RegistrationHeader({
    Key? key,
    required this.title,
    required this.stepNumber,
  }) : super(key: key);

  final String title;
  final int stepNumber;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Register",
          style: textTheme.headlineMedium,
        ),
        const SizedBox(height: 10),
        Text(
          title,
          style: textTheme.titleMedium,
        ),
        const SizedBox(height: 5),
        Text(
          'Step $stepNumber of $totalSteps',
          style: const TextStyle(fontSize: 12, color: BRColors.fnligtBlack),
        ),
        const SizedBox(height: 5),
        StepProgressIndicator(
          totalSteps: totalSteps,
          currentStep: stepNumber,
          size: 2,
          padding: 0,
          selectedColor: BRColors.btGreen,
          unselectedColor: BRColors.trGray,
        ),
      ],
    );
  }
}
