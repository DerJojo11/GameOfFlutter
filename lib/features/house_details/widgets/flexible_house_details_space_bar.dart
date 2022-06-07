import 'package:flutter/material.dart';
import 'package:game_of_flutter/configs/assets.dart';
import 'package:game_of_flutter/configs/paddings.dart';

class FlexibleHouseDetailsSpaceBar extends StatelessWidget {
  const FlexibleHouseDetailsSpaceBar({
    required this.name,
  });

  final String name;

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
          Assets.houseDetailsHeader,
          fit: BoxFit.cover,
        ),
      ),
      titlePadding: const EdgeInsets.only(
        left: Paddings.mediumValue,
        right: Paddings.mediumValue,
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
