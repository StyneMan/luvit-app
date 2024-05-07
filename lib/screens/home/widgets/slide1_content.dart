import 'package:flutter/material.dart';
import 'package:luvit_flutter/helper/constants/constants.dart';

class Slide1Content extends StatelessWidget {
  const Slide1Content({super.key});

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
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Column(
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
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        '서울 ',
                        style: TextStyle(
                          color: Colors.white60,
                        ),
                      ),
                      Icon(
                        Icons.circle,
                        size: 3,
                        color: Colors.white60,
                      ),
                      Text(
                        ' 2km 거리에 있음 ',
                        style: TextStyle(
                          color: Colors.white60,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(
                width: 4.0,
              ),
              Image.asset("assets/images/like_icon.png"),
            ],
          ),
          Center(
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