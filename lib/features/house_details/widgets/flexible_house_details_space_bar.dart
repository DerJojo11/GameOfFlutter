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
      centerTitle: true,
      background: ShaderMask(
        shaderCallback: (bounds) => const LinearGradient(
          colors: [Colors.black54, Colors.transparent],
          begin: Alignment.bottomCenter,
          end: Alignment.center,
        ).createShader(
          bounds,
        ),
        blendMode: BlendMode.srcATop,
        child: Image.asset(
          Assets.houseDetailsHeader,
          fit: BoxFit.cover,
        ),
      ),
      titlePadding: Paddings.medium,
      title: Text(
        name,
      ),
    );
  }
}
