import 'package:flutter/material.dart';
import 'package:luvit_flutter/helper/constants/constants.dart';

class Slide3Content extends StatelessWidget {
  const Slide3Content({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(21.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            width: 92,
            child: Chip(
              label: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(
                    Icons.star,
                    size: 18,
                    color: Colors.white60,
                  ),
                  Text(
                    ' 29,930',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  )
                ],
              ),
              backgroundColor: Constants.secondaryColor,
            ),
          ),
          const SizedBox(
            height: 2.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: <Widget>[
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    RichText(
                      text: const TextSpan(
                        style: TextStyle(
                          color: Colors.white,
                        ),
                        children: [
                          TextSpan(
                            text: '잭과분홍콩나물 ',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 24,
                            ),
                          ),
                          TextSpan(
                            text: '25 ',
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 22,
                            ),
                          )
                        ],
                      ),
                    ),
                    Chip(
                      label: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 5.0),
                        child: RichText(
                          text: const TextSpan(
                            children: [
                              TextSpan(
                                text: '💖 ',
                              ),
                              TextSpan(
                                text: '진지한 연애를 찾는 중',
                                style: TextStyle(
                                  color: Constants.primaryColor,
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      backgroundColor: Color(0xB2621133),
                      side: const BorderSide(
                        color: Constants.primaryColor,
                        width: 1.0,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 24.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Chip(
                                label: Padding(
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 2.0),
                                  child: RichText(
                                    text: const TextSpan(
                                      children: [
                                        TextSpan(
                                          text: '🍸 ',
                                        ),
                                        TextSpan(
                                          text: '전혀 안 함',
                                          style: TextStyle(
                                            color: Colors.white,
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                                backgroundColor: const Color(0xFF1A1A1A),
                                side: const BorderSide(
                                  color: Colors.grey,
                                  width: 0.4,
                                ),
                              ),
                              const SizedBox(
                                width: 6.0,
                              ),
                              Chip(
                                label: Padding(
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 2.0),
                                  child: RichText(
                                    text: const TextSpan(
                                      children: [
                                        TextSpan(
                                          text: '🚬 ',
                                        ),
                                        TextSpan(
                                          text: '비흡연',
                                          style: TextStyle(
                                            color: Colors.white,
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                                backgroundColor: const Color(0xFF1A1A1A),
                                side: const BorderSide(
                                  color: Colors.grey,
                                  width: 0.4,
                                ),
                              ),
                            ],
                          ),
                          Chip(
                            label: RichText(
                              text: const TextSpan(
                                children: [
                                  TextSpan(
                                    text: '💪🏻 ',
                                  ),
                                  TextSpan(
                                    text: '매일 1시간 이상',
                                    style: TextStyle(
                                      color: Colors.white,
                                    ),
                                  )
                                ],
                              ),
                            ),
                            backgroundColor: const Color(0xFF1A1A1A),
                            side: const BorderSide(
                              color: Colors.grey,
                              width: 0.4,
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Chip(
                                label: Padding(
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 2.0),
                                  child: RichText(
                                    text: const TextSpan(
                                      children: [
                                        TextSpan(
                                          text: '🤝 ',
                                        ),
                                        TextSpan(
                                          text: '만나는 걸 좋아함',
                                          style: TextStyle(
                                            color: Colors.white,
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                                backgroundColor: const Color(0xFF1A1A1A),
                                side: const BorderSide(
                                  color: Colors.grey,
                                  width: 0.4,
                                ),
                              ),
                              const SizedBox(
                                width: 6.0,
                              ),
                              Chip(
                                label: Padding(
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 2.0),
                                  child: RichText(
                                    text: const TextSpan(
                                      children: [
                                        TextSpan(
                                          text: 'INFP',
                                          style: TextStyle(
                                            color: Colors.white,
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                                backgroundColor: const Color(0xFF1A1A1A),
                                side: const BorderSide(
                                  color: Colors.grey,
                                  width: 0.4,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                width: 4.0,
              ),
              Image.asset("assets/images/like_icon.png"),
            ],
          ),
          const SizedBox(height: 4.0),
          const Center(
            child: Icon(
              Icons.keyboard_arrow_down_outlined,
              color: Colors.white60,
            ),
          ),
        ],
      ),
    );
  }
}

// Text(
//                   '잭과분홍콩나물 25',
//                   style: TextStyle(
//                     color: Colors.white,
//                     fontSize: 24,
//                     fontWeight: FontWeight.bold,
//                   ),
//                 ),