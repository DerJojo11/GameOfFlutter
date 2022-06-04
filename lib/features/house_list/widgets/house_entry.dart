import 'package:flutter/material.dart';
import 'package:game_of_flutter/configs/paddings.dart';
import 'package:game_of_flutter/extensions/widget_extension.dart';
import 'package:game_of_flutter/infrastructure/domain/house.dart';

class HouseEntry extends StatelessWidget {
  const HouseEntry({required this.house});

  final House house;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () {},
      title: Text(
        house.name,
        style: Theme.of(context).textTheme.headline6,
      ),
      subtitle: Visibility(
        visible: house.region?.isNotEmpty ?? false,
        child: Row(
          children: [
            const Icon(Icons.area_chart_rounded),
            Text(house.region!).withPadding(
              Paddings.leftSmall,
            ),
          ],
        ),
      ),
    );
  }
}
