import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:yum_quick/core/services/shared_preferences_singleton.dart';
import 'package:yum_quick/core/utils/app_router.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Prefs.init();
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
