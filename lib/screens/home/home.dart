import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:luvit_flutter/data/carousel_data.dart';
import 'package:luvit_flutter/helper/constants/constants.dart';
import 'package:luvit_flutter/helper/state/state_manager.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _current = 0;
  final _controller = CarouselController();
  final _stateController = Get.find<StateController>();

  _onPageChanged(int page, _) {
    setState(() {
      _current = page;
    });
    // _selectedSlider.value = page;
  }

  _removeCard(int index) {
    _stateController.slides.removeAt(index);
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Obx(
        () => Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 2,
            ),
            _stateController.slides.value.isEmpty
                ? const Center(
                    child: Column(
                      children: [
                        Text(
                          '추천 드릴 친구들을 준비 중이에요',
                          style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.w700,
                            color: Colors.white,
                          ),
                        ),
                        Text(
                          '매일 새로운 친구들을 소개시켜드려요',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w700,
                            color: Color(0xFFADADAD),
                          ),
                        ),
                      ],
                    ),
                  )
                : Expanded(
                    child: Stack(
                      children: [
                        CarouselSlider.builder(
                          itemCount: _stateController.slides.length,
                          carouselController: _controller,
                          itemBuilder: (context, index, realIndex) {
                            return Draggable(
                              data: _stateController.slides,
                              onDragUpdate: (details) {
                                if (details.globalPosition.dx == 0) {
                                  print("DELETE LEFT HERE :::");
                                  _removeCard(index);
                                }

                                if (details.globalPosition.dy >= 620) {
                                  print("DELETE BOTTOM HERE :::");
                                  _removeCard(index);
                                }
                              },
                              feedback: SizedBox(
                                width: 400,
                                child: Stack(
                                  children: [
                                    Container(
                                      height:
                                          MediaQuery.of(context).size.height *
                                              0.9,
                                      margin: const EdgeInsets.symmetric(
                                          horizontal: 4.0),
                                      padding: const EdgeInsets.all(14.0),
                                      decoration: BoxDecoration(
                                        image: DecorationImage(
                                          image: AssetImage(
                                            _stateController
                                                .slides.value[index].imageRes,
                                          ),
                                          fit: BoxFit.cover,
                                        ),
                                        border: Border.all(
                                          width: 0.60,
                                          color: Colors.grey,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(16.0),
                                      ),
                                    ),
                                    Positioned(
                                      bottom: 0.0,
                                      left: 4.0,
                                      right: 4.0,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                          top: 48.0,
                                          left: 8.0,
                                          bottom: 10.0,
                                          right: 8.0,
                                        ),
                                        decoration: BoxDecoration(
                                          gradient: const LinearGradient(
                                            colors: [
                                              Color.fromARGB(200, 0, 0, 0),
                                              Color.fromARGB(0, 0, 0, 0)
                                            ],
                                            begin: Alignment.bottomCenter,
                                            end: Alignment.topCenter,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(16.0),
                                        ),
                                        child: Column(
                                          children: [
                                            _stateController
                                                .slides.value[index].body,
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              child: Stack(
                                children: [
                                  Container(
                                    height: MediaQuery.of(context).size.height *
                                        0.9,
                                    margin: const EdgeInsets.symmetric(
                                        horizontal: 4.0),
                                    padding: const EdgeInsets.all(14.0),
                                    decoration: BoxDecoration(
                                      image: DecorationImage(
                                        image: AssetImage(
                                          _stateController
                                              .slides.value[index].imageRes,
                                        ),
                                        fit: BoxFit.cover,
                                      ),
                                      border: Border.all(
                                        width: 0.60,
                                        color: Colors.grey,
                                      ),
                                      borderRadius: BorderRadius.circular(16.0),
                                    ),
                                  ),
                                  Positioned(
                                    bottom: 0.0,
                                    left: 4.0,
                                    right: 4.0,
                                    child: Container(
                                      padding: const EdgeInsets.only(
                                        top: 48.0,
                                        left: 8.0,
                                        bottom: 10.0,
                                        right: 8.0,
                                      ),
                                      decoration: BoxDecoration(
                                        gradient: const LinearGradient(
                                          colors: [
                                            Color.fromARGB(200, 0, 0, 0),
                                            Color.fromARGB(0, 0, 0, 0)
                                          ],
                                          begin: Alignment.bottomCenter,
                                          end: Alignment.topCenter,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(16.0),
                                      ),
                                      child: Column(
                                        children: [
                                          _stateController
                                              .slides.value[index].body,
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            );
                          },
                          options: CarouselOptions(
                            height: double.infinity,
                            viewportFraction: 1,
                            autoPlay: false,
                            enlargeFactor: 0.3,
                            autoPlayInterval: const Duration(seconds: 10),
                            enlargeStrategy: CenterPageEnlargeStrategy.scale,
                            enlargeCenterPage: true,
                            aspectRatio: 3.0,
                            onPageChanged: _onPageChanged,
                          ),
                        ),
                        Positioned(
                          top: 16,
                          left: 16,
                          right: 16,
                          child: Row(
                            children: [
                              for (var i = 0;
                                  i < _stateController.slides.value.length;
                                  i++)
                                Expanded(
                                  child: Container(
                                    height: 4,
                                    margin: const EdgeInsets.all(1.25),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(18.0),
                                      color: i == _current
                                          ? Constants.primaryColor
                                          : Constants.secondaryColor,
                                    ),
                                  ),
                                )
                            ],
                          ),
                        ),
                        Positioned(
                          top: 2,
                          left: 4,
                          child: IconButton(
                            onPressed: () {
                              _controller.previousPage();
                            },
                            icon: const Padding(
                              padding: EdgeInsets.all(36.0),
                              child: Text(' '),
                            ),
                          ),
                        ),
                        Positioned(
                          top: 2,
                          right: 4,
                          child: IconButton(
                            onPressed: () {
                              _controller.nextPage();
                            },
                            icon: const Padding(
                              padding: EdgeInsets.all(36.0),
                              child: Text(' '),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
            const SizedBox(
              height: 24,
            ),
          ],
        ),
      ),
    );
  }
}
