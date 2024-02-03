import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:mytemplate/core/services/service.dart';
import 'package:mytemplate/routes/app_route.dart';
import 'package:mytemplate/theme/app_theme.dart';

import 'localization/applocalizations.dart';

void main() async {
WidgetsFlutterBinding.ensureInitialized();
// init the main services like firebase , sharedpref etc..
  await initialServices();

// stick the app on portrait mode and run MyApp widget
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]).then((value) {
    runApp(const MyApp());
  });
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of the application.
  @override
  Widget build(BuildContext context) {
    final Iterable<LocalizationsDelegate<dynamic>> delegates = {
      DefaultMaterialLocalizations.delegate,
      DefaultCupertinoLocalizations.delegate,
      DefaultWidgetsLocalizations.delegate,
    };
    // ScreenUtilInit to make the app responsive dynamiclly
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        // getmaterialapp widget for add the getx feature to the app
        return GetMaterialApp(
          title: 'My Template',
          // lang class
          translations: AppLocalization(),
          fallbackLocale: const Locale("ar_sa"),
          locale: const Locale("ar_sa"),
          localizationsDelegates: delegates,
          debugShowCheckedModeBanner: false,
          // we can edit general theme data from this class
          theme: AppTheme.appTheme,
          // approute is a class have all app routes
          getPages: AppRoutes.pages,
          initialRoute: AppRoutes.splashscreen,
        );
      },
    );
  }
}
