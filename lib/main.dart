import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:layout/layout.dart';
import 'package:sizer/sizer.dart';
import 'package:url_strategy/url_strategy.dart';

import 'src/frontend/home/welcome_page.dart';

void main() {
  // set url path strategy to remove # links on web
  setPathUrlStrategy();
  runApp(
    const ProviderScope(
      child: Layout(child: MyApp()),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (context, orientation, deviceType) => MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        initialRoute: '/',
        routes: {
          '/': (context) => const WelcomePage(),
        },
      ),
    );
  }
}
