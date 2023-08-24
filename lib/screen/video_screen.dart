import 'package:chewie/chewie.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../provider/video_provider.dart';

class videoscreen extends StatefulWidget {
  const videoscreen({Key? key}) : super(key: key);

  @override
  State<videoscreen> createState() => _videoscreenState();
}

class _videoscreenState extends State<videoscreen> {
  @override
  Widget build(BuildContext context) {
    return Consumer<VideoProvider>(
      builder: (context, provider, child) => Scaffold(
        body: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            children: [
              Chewie(
                controller: provider.chewieController,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
