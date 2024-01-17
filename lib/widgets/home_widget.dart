import 'package:flutter/material.dart';
import 'package:saffron_ias_flutter_mobile/widgets/explore_categories_widget.dart';
import 'package:saffron_ias_flutter_mobile/widgets/hero_carousel.dart';
import 'package:saffron_ias_flutter_mobile/widgets/new_carousel_widget.dart';
import 'package:saffron_ias_flutter_mobile/widgets/video_thumbnail_card.dart';
// import 'package:saffron_ias_flutter_mobile/constants/theme.dart';

class HomeScreenWidget extends StatelessWidget {
  const HomeScreenWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: const Text('XYZ IAS'),
      //   backgroundColor: ColorTheme.primaryColor,
      // ),
      body: ListView(children: const [
        // HeroCarousel(),
        //
        NewCarouselWidget(),
        ExploreCategoriesWidget(),
        VideoThumbnailCard(),
        VideoThumbnailCard(),
        VideoThumbnailCard(),
        VideoThumbnailCard()
      ]),
    );
  }
}
