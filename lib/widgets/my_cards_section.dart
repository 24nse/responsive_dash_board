import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utils/app_styles.dart';
import 'package:responsive_dash_board/widgets/dots_indicator.dart';
import 'package:responsive_dash_board/widgets/my_cards_page_view.dart';
import 'package:flutter_hooks/flutter_hooks.dart';


class MyCardsSection extends HookWidget {
  const MyCardsSection({super.key});

  @override
  Widget build(BuildContext context) {
    final pageController = usePageController();
    final currentPageIndex = useState(0);

    useEffect(() {
      void listener() {
        currentPageIndex.value = pageController.page?.round() ?? 0;
      }
      pageController.addListener(listener);
      return () => pageController.removeListener(listener);
    }, [pageController]);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          width: 420,
          child: Text(
            'My card',
            style: AppStyles.styleSemiBold20(context),
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        MyCardsPageView(
          pageController: pageController,
        ),
        const SizedBox(
          height: 20,
        ),
        DotsIndicator(
          currentPageIndex: currentPageIndex.value,
        ),
      ],
    );
  }
}
