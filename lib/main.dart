import 'package:flutter/material.dart';
import 'package:InstagramWeatherFlutter/src/pages/image_list_page.dart';
import 'src/pages/home_page.dart';
import 'src/theme/theme.dart';
import 'src/pages/main_home.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_rounded_date_picker/rounded_picker.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ],
      supportedLocales: [
        const Locale('en', 'US'), // English
        const Locale('kr', 'KR'), // Thai
      ],

      theme: AppTheme.lightTheme,
      home: MainHome(),
      debugShowCheckedModeBanner: false,

      //home: ImageListState(),
    );
  }
}

/*

*/