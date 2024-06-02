import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:tennis_fun/common/di/injection.dart';
import 'package:tennis_fun/presentation/page/home.dart';

class TennisFunApp extends StatelessWidget {
  const TennisFunApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: getIt.get<GoRouter>(),
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
    );
  }
}