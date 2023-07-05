import 'package:flutter/material.dart';

class FlexibleDetailsSpaceBar extends StatelessWidget {
  const FlexibleDetailsSpaceBar({
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
      centerTitle: true,
      title: Text(
        name,
        textAlign: TextAlign.center,
        maxLines: 2,
        overflow: TextOverflow.ellipsis,
        style: Theme.of(context)
            .textTheme
            .titleLarge
            ?.copyWith(color: Colors.white),
      ),
    );
  }
}
