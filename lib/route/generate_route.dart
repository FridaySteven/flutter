import 'package:flutter/material.dart';
import 'package:my_demo_app/models/home_model.dart';
import 'package:my_demo_app/page/detail_page.dart';
import 'package:my_demo_app/page/video_page.dart';

import '../page/home_page.dart';
import '../route/route_name.dart' as route_name;

Route generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case route_name.homePage:
      return MaterialPageRoute(
        settings: settings,
        builder: (_) => const HomePage(),
      );
    case route_name.detailPage:
      return MaterialPageRoute(
        settings: settings,
        builder: (_) => DetailPage(home: settings.arguments as Home),
      );
    case route_name.videoPage:
      return MaterialPageRoute(
        settings: settings,
        builder: (_) => const VideoPage(),
      );
    default:
      return MaterialPageRoute(builder: (_) => const HomePage());
  }
}
