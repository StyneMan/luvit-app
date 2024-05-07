import 'package:get/get.dart';
import 'package:luvit_flutter/data/carousel_data.dart';

class StateController extends GetxController {
  var slides = [].obs;

  @override
  void onInit() async {
    super.onInit();
    slides.value = carouselData;
  }

  void setSlides(var data) {
    slides.value = data;
  }

  @override
  void onClose() {
    super.onClose();
  }
}
