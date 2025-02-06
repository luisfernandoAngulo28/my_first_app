import 'package:flutter/material.dart';
import 'package:my_first_app/Values/ColorsApp.dart';
import 'package:my_first_app/Values/TextStyleApp.dart';



TextTheme get textTheme=>TextTheme(
    titleMedium:subtitle1,
    bodyMedium:bodyText2 ,
    bodyLarge: bodyText1,
    headlineMedium: headline4,
    displaySmall: headline3,
    bodySmall: caption
);

TextTheme get textThemeDark=>TextTheme(
    titleMedium:subtitle1Dark,
    bodyMedium:bodyText2Dark ,
    bodyLarge: bodyText1Dark,
    headlineMedium: headline4Dark,
    displaySmall: headline3Dark,
    bodySmall: captionDark
);

IconThemeData get iconThemeData1 =>IconThemeData(
    color: icon1Color
);

IconThemeData get iconThemeData2 =>iconThemeData1.copyWith(color: icon2Color);

IconThemeData get iconThemeDark =>IconThemeData(
    color: iconDark
);