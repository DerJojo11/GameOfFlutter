import 'package:flutter/material.dart';
import 'package:game_of_flutter/features/house_details/widgets/flexible_house_details_space_bar.dart';
import 'package:game_of_flutter/infrastructure/domain/house.dart';

class HouseDetails extends StatelessWidget {
  const HouseDetails({
    required this.house,
  });

  final House house;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 200,
            stretch: true,
            pinned: true,
            flexibleSpace: FlexibleHouseDetailsSpaceBar(
              name: house.name,
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (context, index) => Container(
                color: index.isOdd ? Colors.white : Colors.black12,
                height: 100.0,
                child: Center(
                  child: Text('$index', textScaleFactor: 5),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget _buildOverLord() {
    return Column(
      children: const [],
    );
  }
}
