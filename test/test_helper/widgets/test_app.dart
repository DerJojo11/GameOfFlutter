import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class TestApp extends StatelessWidget {
  const TestApp({
    required this.child,
    this.providers,
  });

  final Widget child;
  final List<BlocProvider>? providers;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: providers != null
          ? MultiBlocProvider(
              providers: providers!,
              child: _buildScaffold(),
            )
          : _buildScaffold(),
    );
  }

  Widget _buildScaffold() {
    return Scaffold(
      body: child,
    );
  }
}
