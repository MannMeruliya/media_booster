import 'package:flutter/material.dart';
import 'package:media_booster/screen/slider.dart';
import 'package:media_booster/screen/video_screen.dart';

class homescreen extends StatefulWidget {
  const homescreen({Key? key}) : super(key: key);

  @override
  State<homescreen> createState() => _homescreenState();
}

class _homescreenState extends State<homescreen> with TickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Video Player"),
        bottom: TabBar(
          controller: _tabController,
          tabs: const [
            Tab(
              child: Text(
                "Video",
                style: TextStyle(color: Colors.indigo),
              ),
            ),
            Tab(
              child: Text(
                "Slider",
                style: TextStyle(color: Colors.indigo),
              ),
            ),
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: const [
          videoscreen(),
          SliderPage()
        ],
      ),
    );
  }
}
