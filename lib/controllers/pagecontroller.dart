import 'package:flutter/material.dart';
import 'package:learnbook/models/info.dart';
import 'package:get/state_manager.dart';
import 'package:get/utils.dart';

class PageControllers extends GetxController {
  var selectpageindex = 0.obs;
  bool get isLantPage => selectpageindex.value == data.length - 1;
  var pagecontroller = new PageController();
  forwardAction() {
    if (isLantPage) {
      //get home
    } else
      pagecontroller.nextPage(duration: 300.milliseconds, curve: Curves.ease);
  }

  List<Data> data = [
    Data(
      "https://ps.w.org/wp-smushit/assets/icon-256x256.gif?rev=2263432",
      "Lorem",
      "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.",
      0xFF06EBC4,
    ),
    Data(
      "https://ps.w.org/smartcrawl-seo/assets/icon-256x256.gif?rev=2262078",
      "Ipsum",
      " It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
      0xFFFF2904,
    ),
    Data(
      "https://ps.w.org/defender-security/assets/icon-256x256.gif?rev=2263944",
      "Looking",
      "It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English.",
      0xFFFF9900,
    ),
     Data(
      "https://ps.w.org/hummingbird-performance/assets/icon-256x256.gif?rev=2262085",
      "distracted",
      "It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English.",
      0xFFFCF9F6,
    ),
         Data(
      "https://ps.w.org/beehive-analytics/assets/icon-256x256.gif?rev=2263941",
      "established",
      "It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English.",
      0xFFFCF9F6,
    ),
      Data(
      "https://wpbaran.ir/wp-content/uploads/2018/09/auto-linking-wpbaran-ir.png",
      "Start",
      " Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making.",
      0xFFFF0000,
    ),
  ];
}
