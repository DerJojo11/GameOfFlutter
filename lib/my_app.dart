import 'package:flutter/material.dart';
import 'package:game_of_flutter/configs/theme/app_theme.dart';
import 'package:game_of_flutter/features/house_list/widgets/house_list.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:game_of_flutter/l10n/l10n.dart';
import 'package:game_of_flutter/router/app_router.dart';

/// This widget is the root of the application.
class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  final AppRouter _appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      onGenerateTitle: (context) {
        l10n = context.l10n;
        return l10n.appTitle;
      },
      routerConfig: _appRouter.router,
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      theme: AppTheme().themeData,
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(l10n.appTitle),
      ),
      body: const HouseList(),
    );
  }
}
