
import '../features/members/member/member_views/add_member_page.dart';
import '/features/members/member/member_views/member_page.dart';
import '../features/match/match_views/match_page.dart';
import '/features/palyer/player_views/player_page.dart';
import '../features/home/home_views/home_page.dart';
import '../features/counter/counter_views/counter_page.dart';
import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';
import 'app_routes.dart';

class AppPages {
  static final List<RouteBase> routes = [
    GoRoute(
      name: AppRoutes.home,
      path: AppRoutes.home,
      builder: (BuildContext context, GoRouterState state) {
        return const HomePage();
      },
    ),
    GoRoute(
      path: AppRoutes.counter,
      builder: (BuildContext context, GoRouterState state) {
        return const CounterPage();
      },
    ),
    GoRoute(
      path: AppRoutes.details,
      builder: (BuildContext context, GoRouterState state) {
        return const CounterPage();
      },
    ),
    GoRoute(
      path: AppRoutes.addPlayer,
      name: AppRoutes.addPlayer,
      builder: (BuildContext context, GoRouterState state) {
        return const AddPlayerPage();
      },
    ),
    GoRoute(
      path: AppRoutes.members,
      name: AppRoutes.members,
      builder: (BuildContext context, GoRouterState state) {
        return const MemberPage();
      },
    ),
    GoRoute(
      path: AppRoutes.addMember,
      name: AppRoutes.addMember,
      builder: (BuildContext context, GoRouterState state) {
        return const AddMemberPage();
      },
    ),
  
    GoRoute(
      path: AppRoutes.match,
      name: AppRoutes.match,
      builder: (BuildContext context, GoRouterState state) {
        return const MatchPage();
      },
    ),
  ];
}
