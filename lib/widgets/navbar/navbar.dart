import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:luvit_flutter/helper/constants/constants.dart';

class NavBar extends StatelessWidget {
  final int pageIndex;
  final Function(int) onTap;

  const NavBar({
    super.key,
    required this.pageIndex,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        left: 0,
        right: 0,
        bottom: Platform.isAndroid ? 0 : 0,
      ),
      color: Colors.transparent,
      child: BottomAppBar(
        elevation: 0.0,
        color: Colors.transparent,
        child: ClipRRect(
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(16),
            topRight: Radius.circular(16),
          ),
          child: Container(
            height: 64,
            decoration: const BoxDecoration(
              border: Border(
                top: BorderSide(color: Colors.grey, width: 0.20),
              ),
              color: Constants.secondaryColor,
            ),
            child: Row(
              children: [
                navItem(
                  "assets/images/home_icon.svg",
                  "홈",
                  pageIndex == 0,
                  onTap: () => onTap(0),
                ),
                navItem(
                  "assets/images/location_on.svg",
                  "스팟",
                  pageIndex == 1,
                  onTap: () => onTap(1),
                ),
                const SizedBox(width: 80),
                navItem(
                  "assets/images/chat_icon.svg",
                  "채팅",
                  pageIndex == 2,
                  onTap: () => onTap(2),
                ),
                navItem(
                  "assets/images/person_icon.svg",
                  "마이",
                  pageIndex == 3,
                  onTap: () => onTap(3),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget navItem(String icon, String title, bool selected,
      {Function()? onTap}) {
    return Expanded(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(height: 10.0),
          InkWell(
            onTap: onTap,
            child: SvgPicture.asset(
              icon,
              color: selected
                  ? Constants.primaryColor
                  : Colors.grey.withOpacity(0.4),
            ),
          ),
          Text(
            title,
            style: TextStyle(
              color: selected
                  ? Constants.primaryColor
                  : Colors.grey.withOpacity(0.4),
            ),
          ),
        ],
      ),
    );
  }
}
