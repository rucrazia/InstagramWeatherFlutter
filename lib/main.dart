import 'package:flutter/material.dart';
import 'package:InstagramWeatherFlutter/src/pages/image_list_page.dart';
import 'src/pages/home_page.dart';
import 'src/theme/theme.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      theme: AppTheme.lightTheme,
      home: HomePage(),
      debugShowCheckedModeBanner: false,

      //home: ImageListState(),
    );
  }
}

/*

*/