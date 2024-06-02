import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:tennis_fun/app/app.dart';
import 'package:tennis_fun/common/di/injection.dart';
import 'package:tennis_fun/presentation/bloc/auth_bloc.dart';

void main() {
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  configureDependencies();
  runApp(MultiBlocProvider(providers: [
    BlocProvider(create: (context) => AuthBloc())
  ], child: const TennisFunApp()));
}
