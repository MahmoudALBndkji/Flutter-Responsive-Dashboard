import 'package:flutter/material.dart';
import 'package:flutter_responsive_dashboard/utils/app_styles.dart';
import 'package:flutter_responsive_dashboard/widgets/my-cards-section/dots_indicator.dart';
import 'package:flutter_responsive_dashboard/widgets/my-cards-section/my_cards_page_view.dart';

class MyCardsSection extends StatefulWidget {
  const MyCardsSection({super.key});

  @override
  State<MyCardsSection> createState() => _MyCardsSectionState();
}

class _MyCardsSectionState extends State<MyCardsSection> {
  late PageController pageController;
  int currentPageIndex = 0;
  @override
  void initState() {
    pageController = PageController();
    pageController.addListener(
      () {
        currentPageIndex = pageController.page!.round();  
        setState(() {});
      },
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 10.0),
        Text(
          'My Card',
          style: AppStyles.styleSemiBold20(context),
        ),
        const SizedBox(height: 20.0),
        MyCardsPageView(pageController: pageController),
        const SizedBox(height: 20.0),
        DotsIndicator(currentPageIndex: currentPageIndex),
      ],
    );
  }
}
