import 'package:flutter/material.dart';
import 'package:game_of_flutter/configs/paddings.dart';
import 'package:game_of_flutter/extensions/widget_extension.dart';
import 'package:game_of_flutter/features/house_details/widgets/headline_text.dart';

class DetailsInfo extends StatelessWidget {
  const DetailsInfo({
    required this.asset,
    required this.title,
    required this.children,
  });

  final String asset;
  final String title;
  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Image.asset(asset),
        ).withPadding(
          edges: [Edges.trailing],
        ),
        Flexible(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              HeadlineText(
                title: title,
              ),
              ...children,
            ],
          ),
        ),
      ],
    );
  }
}
