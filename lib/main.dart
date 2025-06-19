import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:qrmaker/core/theme.dart';
import 'package:qrmaker/features/qr_maker_screen/presentation/view/qr_maker_view.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:qrmaker/l10n/l10n.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
void main() async {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(360, 690),
        minTextAdapt: true,
        splitScreenMode: true,
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'QR Maker',
          home: const QrMakerView(),
          theme: AppTheme.lightTheme,
          darkTheme: AppTheme.darkTheme,
          locale: WidgetsBinding.instance.window.locale,
          supportedLocales: L10n.all,
          localizationsDelegates: const [
            AppLocalizations.delegate,
            GlobalMaterialLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate,
          ],
        ));
  }
}
