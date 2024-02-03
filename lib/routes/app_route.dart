import 'package:get/get.dart';
import 'package:mytemplate/presentation/home/home_bindings.dart';
import 'package:mytemplate/presentation/home/home_page.dart';
import 'package:mytemplate/presentation/splash_screen/splash_screen_page.dart';

import '../presentation/splash_screen/splash_screen_bindings.dart';

class AppRoutes {
  static const String splashscreen = '/splashscreen';
  static const String home = '/home';

  static List<GetPage> pages = [
    GetPage(
      name: splashscreen,
      page: () => const SplashScreenPage(),
      bindings: [
        SplashScreenBindings(),
      ],
    ),
    GetPage(
      name: home,
      page: () => const HomePage(),
      bindings: [
        HomeBindings(),
      ],
    ),
  ];
}
