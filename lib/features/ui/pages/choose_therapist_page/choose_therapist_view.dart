import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:test_task/assets/colors.dart';
import 'package:test_task/assets/sizes.dart';
import 'package:test_task/assets/text_styles.dart';
import 'package:test_task/features/ui/widgets/gradient_button.dart';

part 'widgets/therapist_card.dart';

part 'widgets/search_row.dart';

const _duration = Duration(milliseconds: 300);
const _curve = Curves.easeIn;

class ChooseTherapistView extends StatelessWidget {
  const ChooseTherapistView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: AppColors.blueBg,
      appBar: CupertinoNavigationBar(
        middle: Text("Choose a Therapist"),
      ),
      body: Column(
        children: [
          gapH24,
          SearchRow(),
          gapH24,
          _TherapistList(),
          gapH24,
          Padding(
            padding: EdgeInsets.symmetric(horizontal: Sizes.p16),
            child: GradientButton(buttonText: 'Make an Appointment'),
          ),
          gapH48,
        ],
      ),
    );
  }
}

class _TherapistList extends StatefulWidget {
  const _TherapistList({super.key});

  @override
  State<_TherapistList> createState() => _TherapistListState();
}

class _TherapistListState extends State<_TherapistList> {
  int currentIndex = 0;
  final controller = PageController(viewportFraction: 0.8);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          alignment: Alignment.center,
          children: [
            SizedBox(
              height: Sizes.p400,
              child: PageView.builder(
                controller: controller,
                itemCount: 5,
                onPageChanged: (currentPage) {
                  setState(() {
                    currentIndex = currentPage;
                  });
                },
                itemBuilder: (context, index) => AnimatedPadding(
                  padding: index == currentIndex
                      ? EdgeInsets.zero
                      : const EdgeInsets.symmetric(vertical: Sizes.p10),
                  duration: _duration,
                  child: const TherapistCard(),
                ),
              ),
            ),
            Positioned(
              left: Sizes.zero,
              child: _MovePageIcon(
                onPressed: () => controller.previousPage(
                  duration: _duration,
                  curve: _curve,
                ),
                icon: Icons.arrow_back_sharp,
              ),
            ),
            Positioned(
              right: Sizes.zero,
              child: _MovePageIcon(
                onPressed: () =>
                    controller.nextPage(duration: _duration, curve: _curve),
                icon: Icons.arrow_forward_sharp,
              ),
            )
          ],
        ),
        gapH24,
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: List.generate(
            5,
            (index) => AnimatedContainer(
              height: Sizes.p8,
              width: Sizes.p8,
              margin: const EdgeInsets.only(left: Sizes.p4),
              duration: _duration,
              decoration: BoxDecoration(
                color: index == currentIndex ? AppColors.blue : AppColors.white,
                shape: BoxShape.circle,
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class _MovePageIcon extends StatelessWidget {
  const _MovePageIcon({
    super.key,
    required this.onPressed,
    required this.icon,
  });

  final VoidCallback onPressed;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(AppColors.grey_5),
        shape: MaterialStateProperty.all(
          const CircleBorder(),
        ),
      ),
      onPressed: onPressed,
      icon: Icon(icon),
    );
  }
}
