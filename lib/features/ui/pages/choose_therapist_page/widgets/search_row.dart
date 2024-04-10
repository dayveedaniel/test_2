part of '../choose_therapist_view.dart';

class SearchRow extends StatelessWidget {
  const SearchRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: Sizes.p16),
      child: Row(
        children: [
          const Expanded(
            child: SizedBox(
              height: Sizes.p42,
              child: TextField(
                decoration: InputDecoration(
                  isDense: true,
                  prefixIcon: Icon(
                    Icons.search,
                    size: Sizes.p24,
                  ),
                ),
              ),
            ),
          ),
          gapW8,
          IconButton(
            style: ButtonStyle(
              shape: MaterialStateProperty.all(
                RoundedRectangleBorder(
                  side: const BorderSide(color: AppColors.grey_4),
                  borderRadius: BorderRadius.circular(Sizes.p8),
                ),
              ),
            ),
            onPressed: () {},
            icon: const Icon(Icons.filter_alt_outlined),
          )
        ],
      ),
    );
  }
}
