import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:media_booster/provider/slider_provider.dart';
import 'package:media_booster/provider/video_provider.dart';
import 'package:media_booster/screen/homescreen.dart';

import 'package:provider/provider.dart';

void main() {
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(create: (context) => VideoProvider()),
      ChangeNotifierProvider(create: (context) => sliderprovider(),
      ),
    ],
    child: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    Provider.of<VideoProvider>(context).open();
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
      ),
      home: homescreen()
    );
  }
}
