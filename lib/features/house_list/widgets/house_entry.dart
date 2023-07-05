import 'package:flutter/material.dart';
import 'package:game_of_flutter/configs/paddings.dart';
import 'package:game_of_flutter/extensions/widget_extension.dart';
import 'package:game_of_flutter/infrastructure/domain/house.dart';
import 'package:game_of_flutter/router/router_paths.dart';
import 'package:go_router/go_router.dart';

class HouseEntry extends StatelessWidget {
  const HouseEntry({required this.house});

  final House house;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => context.push(RouterPaths.houseDetails, extra: house),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            house.name,
            style: Theme.of(context).textTheme.titleLarge,
          ),
          Visibility(
            visible: house.region.isNotEmpty,
            child: Row(
              children: [
                const Icon(Icons.area_chart_rounded),
                Text(
                  house.region,
                  style: Theme.of(context).textTheme.titleMedium,
                ).withPadding(
                  edges: [Edges.leading],
                  length: Length.small,
                ),
              ],
            ),
          ),
        ],
      ).withPadding(
        edges: [Edges.vertical],
        length: Length.small,
      ).withPadding(
        edges: [Edges.horizontal],
      ),
    );
  }
}
