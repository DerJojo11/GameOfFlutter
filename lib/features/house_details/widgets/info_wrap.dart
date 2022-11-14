import 'package:flutter/material.dart';
import 'package:game_of_flutter/configs/paddings.dart';
import 'package:game_of_flutter/extensions/widget_extension.dart';

class InfoWrap extends StatelessWidget {
  const InfoWrap({
    required this.title,
    required this.items,
  });

  final String title;
  final List<String> items;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
        Wrap(
          alignment: WrapAlignment.start,
          runSpacing: Length.small.value,
          spacing: Length.small.value,
          children: [
            for (final String title in items)
              ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: ColoredBox(
                  color:
                      Theme.of(context).colorScheme.secondary.withOpacity(.6),
                  child: Text(
                    title,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: const TextStyle(
                      color: Colors.white,
                    ),
                  ).withPadding(
                    length: Length.small,
                  ),
                ),
              ),
          ],
        ).withPadding(
          edges: [Edges.top],
          length: Length.small,
        ),
      ],
    ).withPadding(
      edges: [Edges.top],
      length: Length.small,
    );
  }
}
