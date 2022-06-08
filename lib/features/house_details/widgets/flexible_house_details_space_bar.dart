import 'package:flutter/material.dart';
import 'package:game_of_flutter/configs/paddings.dart';

class FlexibleHouseDetailsSpaceBar extends StatelessWidget {
  const FlexibleHouseDetailsSpaceBar({
    required this.name,
    required this.asset,
  });

  final String name;
  final String asset;

  @override
  Widget build(BuildContext context) {
    return FlexibleSpaceBar(
      expandedTitleScale: 1.4,
      collapseMode: CollapseMode.parallax,
      background: ShaderMask(
        shaderCallback: (bounds) => const LinearGradient(
          colors: [
            Colors.black87,
            Colors.transparent,
            Colors.black54,
          ],
          begin: Alignment.bottomCenter,
          end: Alignment.topCenter,
        ).createShader(
          bounds,
        ),
        blendMode: BlendMode.srcATop,
        child: Image.asset(
          asset,
          fit: BoxFit.cover,
        ),
      ),
      titlePadding: const EdgeInsets.only(
        left: Paddings.largeValue,
        right: Paddings.largeValue,
        top: Paddings.largerValue,
        bottom: Paddings.mediumValue,
      ),
      title: Text(
        name,
        textAlign: TextAlign.center,
      ),
    );
  }
}
