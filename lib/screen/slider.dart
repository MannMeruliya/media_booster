import 'package:carousel_slider/carousel_slider.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:media_booster/provider/slider_provider.dart';
import 'package:provider/provider.dart';

class SliderPage extends StatefulWidget {
  const SliderPage({Key? key}) : super(key: key);

  @override
  State<SliderPage> createState() => _SliderPageState();
}

class _SliderPageState extends State<SliderPage> {
  @override
  Widget build(BuildContext context) {
    return Consumer<sliderprovider>(
        builder: (context, provider, child) => Scaffold(
         body : Column(
            children: [
              CarouselSlider(
                items: provider.ImageList.map((e) {
                  return Container(
                    height: 250,
                    width: double.infinity,
                    margin: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(
                        fit: BoxFit.fill,
                        image: NetworkImage(e),
                      ),
                    ),
                  );
                }).toList(),
                options: CarouselOptions(
                  autoPlay: true,
                  height: 250,
                  aspectRatio: 1.0,
                  enableInfiniteScroll: true,
                  onPageChanged: (index, reason) => provider.changeCurrentPageIndex(index),
                ),
              ),
              DotsIndicator(
                dotsCount: provider.ImageList.length,
                position: provider.currentIndex,
              )
            ],
          ),
        ),
    );
  }
}
