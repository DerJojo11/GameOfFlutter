import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:game_of_flutter/features/house_details/widgets/character_info.dart';

class CharacterSlider extends StatelessWidget {
  const CharacterSlider({
    required this.characterIds,
  });

  final List<int> characterIds;

  @override
  Widget build(BuildContext context) {
    return CarouselSlider.builder(
      itemCount: characterIds.length,
      itemBuilder: (context, index, realIndex) => _buildCarouselEntry(context, characterIds[index]),
      options: CarouselOptions(
        height: 150,
        initialPage: 0,
        enableInfiniteScroll: false,
        disableCenter: true,
        enlargeCenterPage: false,
        viewportFraction: 0.93,
      ),
    );
  }

  Widget _buildCarouselEntry(BuildContext context, int id) {
    return CharacterInfo(title: 'title', characterId: id);
  }
}
