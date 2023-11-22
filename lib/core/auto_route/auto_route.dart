import 'package:auto_route/annotations.dart';
import 'package:salt_flutter_mini_project/modules/homepage/presentations/pages/homepage.dart';
import 'package:salt_flutter_mini_project/modules/login/presentations/pages/login_page.dart';
import 'package:salt_flutter_mini_project/modules/splashscreen/presentations/pages/splashscreen_page.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(
      page: SplashScreenPage,
      initial: true,
    ),
    AutoRoute(
      page: LoginPage,
    ),
    AutoRoute(
      page: HomePage,
    ),
  ],
)
// ignore: prefer-match-file-name
class $AppRouter {}
