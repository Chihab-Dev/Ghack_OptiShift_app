import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ghack_app/core/services/services_locator.dart';
import 'package:ghack_app/core/services/shared_prefrences.dart';
import 'package:ghack_app/presentation/components/theme_manager.dart';
import 'package:ghack_app/presentation/screens/auth/screens/auth_screen.dart';
import 'package:ghack_app/presentation/screens/drawer/view/zoom_drawer.dart';
import 'package:ghack_app/presentation/screens/onBoarding/onBoarding1.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await ServiceLocator().init();

  // Only vertical screens :
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);

  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    AppPrefernces apprefernces = AppPrefernces(getIt());

    bool isUserWatchOnBoarding = apprefernces.isUserWatchOnBoarding();
    bool isUserLoggedIn = apprefernces.isUserLoggedIn();

    return ScreenUtilInit(
      // emulator width and height (13 pro max )
      designSize: const Size(430, 932),
      minTextAdapt: true,
      splitScreenMode: true,
      useInheritedMediaQuery: true,
      builder: (context, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: getApplicationTheme(),
          home: isUserLoggedIn
              ? const ZoomDrawerView()
              : isUserWatchOnBoarding
                  ? const AuthScreen()
                  : const OnBoarding1View(),
        );
      },
    );
  }
}
