import 'package:flutter/material.dart';
import 'package:game_of_flutter/features/house_list/widgets/house_list.dart';
import 'package:game_of_flutter/router/app_router.dart';

/// This widget is the root of the application.
class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  final AppRouter _appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routeInformationParser: _appRouter.router.routeInformationParser,
      routerDelegate: _appRouter.router.routerDelegate,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: const ColorScheme(
          brightness: Brightness.light,
          primary: Color(0xFF67331E),
          onPrimary: Color(0xFFFCFEF0),
          secondary: Color(0xFFC38D5F),
          onSecondary: Color(0xFFFCFEF0),
          error: Colors.red,
          onError: Color(0xFFFCFEF0),
          background: Color(0xFFFCFEF0),
          onBackground: Color(0xFF331C0E),
          surface: Color(0xFFC38D5F),
          onSurface: Color(0xFF67331E),
        ),
        textTheme: const TextTheme(
          bodyText1: TextStyle(
            fontSize: 16,
            color: Color(0xFF331C0E),
          ),
          bodyText2: TextStyle(
            color: Color(0xFF331C0E),
            fontSize: 14,
          ),
          subtitle1: TextStyle(
            color: Color(0xFF331C0E),
            fontSize: 16,
          ),
          subtitle2: TextStyle(
            color: Color(0xFF331C0E),
            fontSize: 14,
          ),
          caption: TextStyle(
            fontSize: 12,
            color: Color(0xFF331C0E),
          ),
          headline1: TextStyle(
            color: Color(0xFF331C0E),
            fontSize: 60,
            fontFamily: 'Allison',
            fontWeight: FontWeight.bold,
          ),
          headline2: TextStyle(
            color: Color(0xFF331C0E),
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
          headline5: TextStyle(
            color: Color(0xFF331C0E),
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
          headline6: TextStyle(
            color: Color(0xFF331C0E),
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Game of Flutter'),
      ),
      body: const HouseList(), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
