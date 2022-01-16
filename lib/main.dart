import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:grocery_app/ui/screens/groceryScreens/grocery_try.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();

  runApp(
    // MyApp()
    EasyLocalization(
        supportedLocales: [Locale('en'), Locale('ar')],
        path: 'assets/langs', // <-- change the path of the translation files
        fallbackLocale: Locale('en'),
        useOnlyLangCode: true,
        child: MyApp()),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Locale myLocale;
    return ScreenUtilInit(
      // print(Platform.localeName); طبعت لغة الجهاز
      designSize: Size(411.42857142857144, 797.7142857142857),
      // minTextAdapt: true,
      builder: () => MaterialApp(
        debugShowCheckedModeBanner: false,
        localizationsDelegates: context.localizationDelegates,
        supportedLocales: context.supportedLocales,
        locale: context.locale,

        // Grocery app screens
        home: GroceryTry(),
        // home: GroceryProdDetail(),

        //yoga app
        // home: YogaMainScreen(),
        // home: YogaTypeDetailScreen(),
      ),
    );
  }
}
