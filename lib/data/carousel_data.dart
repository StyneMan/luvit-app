import 'package:luvit_flutter/helper/model/carousel_model.dart';
import 'package:luvit_flutter/screens/home/widgets/slide1_content.dart';
import 'package:luvit_flutter/screens/home/widgets/slide2_content.dart';
import 'package:luvit_flutter/screens/home/widgets/slide3_content.dart';

var carouselData = [
  CarouselModel(
      body: const Slide1Content(), imageRes: "assets/images/slide1.png"),
  CarouselModel(
      body: const Slide2Content(), imageRes: "assets/images/slide2.png"),
  CarouselModel(
      body: const Slide3Content(), imageRes: "assets/images/slide3.png"),
  CarouselModel(
      body: const Slide3Content(), imageRes: "assets/images/slide3.png"),
  CarouselModel(
      body: const Slide3Content(), imageRes: "assets/images/slide3.png"),
];
