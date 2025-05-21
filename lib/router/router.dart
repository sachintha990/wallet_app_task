import 'package:go_router/go_router.dart';
import 'package:wallet_app_task/router/route_names.dart';
import 'package:wallet_app_task/screens/main_screen.dart';

class RouterClass {
  final router = GoRouter(
    initialLocation: "/",
    routes: [
      GoRoute(
        path: "/",
        name: RouteNames.mainPage,
        builder: (context, state) {
          return const MainScreen();
        },
      ),
    ],
  );
}
