// ignore_for_file: no_leading_underscores_for_local_identifiers

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'routes/app_pages.dart';
import 'routes/app_routes.dart';
import 'services/shared_pref_service.dart';
import 'theme/theme_bloc.dart';
import 'theme/theme_state.dart';
import 'utils/di/injection.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await configureDependencies();
  await getIt<SharedPrefService>().init();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final GoRouter _router = GoRouter(
      initialLocation: AppRoutes.home,
      routerNeglect: true,
      redirect: (context, state) {
        // e.g., check authentication
        const loggedIn = false; // Replace with actual login state
        if (!loggedIn && state.path == AppRoutes.details) {
          return AppRoutes.home; // Redirect to home if not logged in
        }
        return null; // No redirection
      },
      routes: AppPages.routes,
    );
    return BlocProvider(
      create: (context) => ThemeBloc(),
      child: BlocBuilder<ThemeBloc, ThemeState>(
        builder: (context, themeState) {
          return MaterialApp.router(
            routerConfig: _router,
            title: 'Flutter Bloc Demo',
            // routerDelegate: _router.routerDelegate,
            // routeInformationParser: _router.routeInformationParser,
            debugShowCheckedModeBanner: false,
            theme: themeState.themeData,
            // home: const CounterPage()
          );
        },
      ),
    );
  }
}
