import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:my_first_app/Common/MyKeys.dart';
import 'package:my_first_app/Common/MyRouters.dart';
import 'package:my_first_app/Pages/LoginPage.dart';
import 'package:my_first_app/Values/ColorsApp.dart';
import 'package:my_first_app/Values/ThemeApp.dart';
import 'package:my_first_app/generated/l10n.dart';
import 'package:sizer/sizer.dart';

import 'Pages/MyHomePage.dart';

void main() {
  runApp( MyApp());
}


class MyApp extends StatefulWidget {
  MyApp() : super(key: myAppKey);

  @override
  State<StatefulWidget> createState() => MyAppState();
// This widget is the root of your application.
}

class MyAppState extends State<MyApp> {

  ThemeMode themeMode = ThemeMode.light;

  Widget build(BuildContext context) {
    return Sizer(
      builder: (context, orientation, deviceType) => MaterialApp(
       localizationsDelegates: [
          GlobalMaterialLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          S.delegate,
        ],
        supportedLocales: S.delegate.supportedLocales,
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        onGenerateRoute: MyRouters.generateRoute,
        initialRoute: ROUTE_HOME,
        themeMode: themeMode,
        darkTheme: ThemeData(
          textTheme: textThemeDark.copyWith(
            bodyLarge: textThemeDark.bodyLarge, // Actualiza si usas subtitle1
          ),
          scaffoldBackgroundColor: backgroundDark,
          iconTheme: iconThemeData1,
          primaryIconTheme: iconThemeData1,
        ),
        theme: ThemeData(
          textTheme: textTheme.copyWith(
            bodyLarge: textTheme.bodyLarge, // Actualiza si usas subtitle1
          ),
          scaffoldBackgroundColor: background,
          iconTheme: iconThemeData1,
          primaryIconTheme: iconThemeData1,
        ),
      ),
    );
  }

  changeTheme(ThemeMode themeMode) {
    setState(() {
      this.themeMode = themeMode;
    });
  }
}
/*
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      onGenerateRoute:MyRouters.generateRoute,
      initialRoute: ROUTE_PLAY_LIST,//esta es la primer vista que el user vera
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
      ),
      //home: const MyHomePage(title: 'Flutter Demo Home Page'),//agrega un hijo
     // home: LoginPage(),
    );
  }
}*/



