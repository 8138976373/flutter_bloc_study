import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:injectable/injectable.dart';

@LazySingleton()
class RoutingService {
  final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();
  Future<void> pushNamed(BuildContext context, String routeName,
      {arguments, Map<String, dynamic>? parameters}) async {
    context.goNamed(routeName);
  }

  Future<void> pushReplacementNamed(BuildContext context, String routeName,
      {arguments,
      Map<String, String> parameters = const <String, String>{}}) async {
    if (context.canPop()) {
      context.pop();
    }
    context.pushReplacementNamed(routeName, pathParameters: parameters);
  }

  Future<void> pushNamedAndRemoveUntil(BuildContext context, String routeName,
      {arguments,
      Map<String, String> parameters = const <String, String>{}}) async {
    final goRouter = GoRouter.of(context);
    goRouter.goNamed(
      routeName,
      pathParameters: parameters,
    );
    // context.pop(routeName, pathParameters: parameters);
  }

  Future<void> pop(
    BuildContext? context, {
    String? routeName,
  }) async {
    if (context != null && context.canPop() && routeName != null) {
      context.pop(
        routeName,
      );
    } else {
      context!.pop();
    }
  }
}
