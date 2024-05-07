import 'package:flutter/material.dart';
import 'package:luvit_flutter/helper/constants/constants.dart';

class Slide2Content extends StatelessWidget {
  const Slide2Content({super.key});

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
                    const SizedBox(height: 2.0),
                    const Padding(
                      padding: EdgeInsets.only(right: 24.0),
                      child: Text(
                        '서로 아껴주고 힘이 되어줄 사람 찾아요 선릉으로 직장 다니고 있고 여행 좋아해요 이상한 이야기하시는 분 바로 차단입니다',
                        style: TextStyle(
                          color: Colors.white60,
                        ),
                        textAlign: TextAlign.justify,
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