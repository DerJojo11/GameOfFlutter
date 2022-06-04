import 'package:game_of_flutter/features/house_details/widgets/house_details.dart';
import 'package:game_of_flutter/infrastructure/domain/house.dart';
import 'package:game_of_flutter/my_app.dart';
import 'package:game_of_flutter/router/router_paths.dart';
import 'package:go_router/go_router.dart';

class AppRouter {
  final GoRouter router = GoRouter(
    routes: [
      GoRoute(
        path: RouterPaths.homePage,
        builder: (context, state) => const MyHomePage(),
      ),
      GoRoute(
          path: RouterPaths.houseDetails,
          builder: (context, state) => HouseDetails(
                house: state.extra as House,
              )),
    ],
  );
}
