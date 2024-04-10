part of '../choose_therapist_view.dart';

class TherapistCard extends StatelessWidget {
  const TherapistCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: AppColors.white,
          borderRadius: BorderRadius.circular(Sizes.p16)),
      width: Sizes.p300,
      padding: const EdgeInsets.all(Sizes.p24),
      margin: const EdgeInsets.symmetric(horizontal: Sizes.p8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
              height: Sizes.p200,
              child: InteractiveViewer(child: const Placeholder())),
          Text(
            'Max Reitcher, 33',
            style: AppTextStyles.s20w400,
          ),
          gapH24,
          Text(
              'Dolor sed sit amet eget urna eget tortor, amet, amet, est. Dapibus amet, cras adipiscing et amet ultri...')
        ],
      ),
    );
  }
}
