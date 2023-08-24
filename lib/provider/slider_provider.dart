import 'package:flutter/material.dart';

class sliderprovider extends ChangeNotifier {
  List<String> ImageList = [
    "https://parade.com/.image/ar_16:9%2Cc_fill%2Ccs_srgb%2Cfl_progressive%2Cq_auto:good%2Cw_1200/MTkwNTgxNDY5Mzk2NjczNjYx/earth-facts-jpg.jpg",
    "https://t4.ftcdn.net/jpg/05/51/96/35/360_F_551963598_53hrJ2UXDoC00XhkqJ8lKN8Xa2EQg4no.jpg",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSEu3Ze8vaF-sg_EzJYMf-mQjgRt9BPlyItVw&usqp=CAU",
    "https://cdn.pixabay.com/photo/2016/11/14/04/45/elephant-1822636_1280.jpg",
  ];
  int currentIndex = 0;

  changeCurrentPageIndex(int index) {
    currentIndex = index;
    notifyListeners();
  }
}
