import 'package:flutter/material.dart';
import 'package:my_demo_app/provider/detail_page_provider.dart';
import 'package:my_demo_app/provider/home_page_provider.dart';
import 'package:my_demo_app/provider/reminder_share_widget_provider.dart';
import 'package:provider/provider.dart';

import 'page/home_page.dart';
import 'route/generate_route.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => HomePageProvider()),
        ChangeNotifierProvider(
            create: (context) => ReminderShareWidgetProvider()),
        ChangeNotifierProvider(create: (context) => DetailPageProvider()),
      ],
      child: MaterialApp(
        onGenerateRoute: generateRoute,
        title: 'Flutter Demo',
        theme: ThemeData(
          // This is the theme of your application.
          //
          // Try running your application with "flutter run". You'll see the
          // application has a blue toolbar. Then, without quitting the app, try
          // changing the primarySwatch below to Colors.green and then invoke
          // "hot reload" (press "r" in the console where you ran "flutter run",
          // or simply save your changes to "hot reload" in a Flutter IDE).
          // Notice that the counter didn't reset back to zero; the application
          // is not restarted.
          primarySwatch: Colors.blue,
        ),
        home: const HomePage(),
      ),
    );
  }
}
