import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:yum_quick/core/di/service_locator.dart';
import 'package:yum_quick/core/services/custom_bloc_observer.dart';
import 'package:yum_quick/core/services/shared_preferences_singleton.dart';
import 'package:yum_quick/core/utils/app_router.dart';
import 'package:yum_quick/firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  await Prefs.init();
  setupServiceLocator();
  Bloc.observer = CustomBlocObserver();
  runApp(const YumQuick());
}

class YumQuick extends StatelessWidget {
  const YumQuick({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(textTheme: GoogleFonts.leagueSpartanTextTheme()),
      routerConfig: AppRouter.router,
    );
  }
}
