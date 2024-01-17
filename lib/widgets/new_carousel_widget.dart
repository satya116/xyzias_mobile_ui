import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class NewCarouselWidget extends StatefulWidget {
  const NewCarouselWidget({super.key});

  @override
  State<NewCarouselWidget> createState() => _NewCarouselWidgetState();
}

class _NewCarouselWidgetState extends State<NewCarouselWidget> {
  final carouselLength = 3; // this will be set according to the carousel length
  int carouselCurrentIndex = 0;

  PageController pageController = PageController();

  @override
  void initState() {
    super.initState();
    // pageController.addListener(_onPageChanged);
  }

  // void _onPageChanged() {
  //   if (pageController.page == carouselLength - 1) {
  //     // If the last page is reached, jump to the first page (infinite loop)
  //     pageController.jumpToPage(0);
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20.0),
      child: Column(
        children: [
          SizedBox(
            height: 180,
            child: PageView(
              controller: pageController,
              pageSnapping: true,
              // controller: ,
              onPageChanged: (intt) {
                setState(() {
                  carouselCurrentIndex = intt;
                  // if (carouselLength == (intt + 1)) {
                  //   pageController.jumpToPage(0);
                  // }
                });
                if (kDebugMode) {
                  print(
                      "onPageChanged called page length is $carouselLength and index is $intt");
                }
              },
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: ClipRRect(
                    borderRadius:
                        const BorderRadius.all(Radius.elliptical(15, 10)),
                    child: Container(
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('assets/images/car11.jpg'),
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: ClipRRect(
                    borderRadius:
                        const BorderRadius.all(Radius.elliptical(15, 15)),
                    child: Container(
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('assets/images/car11.jpg'),
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: ClipRRect(
                    borderRadius:
                        const BorderRadius.all(Radius.elliptical(25, 16)),
                    child: Container(
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('assets/images/car11.jpg'),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          DotsIndicator(
            dotsCount:
                carouselLength, // Number of dots should match the number of pages
            position: carouselCurrentIndex,
            decorator: DotsDecorator(
              size: const Size.square(8.0),
              activeSize: const Size(20.0, 8.0),
              color: Colors.grey, // Inactive dot color
              activeColor: Colors.blue, // Active dot color
              spacing: const EdgeInsets.symmetric(horizontal: 4.0),
              activeShape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5.0)),
            ),
          ),
        ],
      ),
    );
  }
}
