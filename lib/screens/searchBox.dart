import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../constant.dart';

class SearchBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(20),
      padding: EdgeInsets.symmetric(horizontal: 25,vertical: 1),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
          border: Border.all(
              color: kSecondaryColor.withOpacity(.32)
          )
      ),
      child: TextField(
        decoration: InputDecoration(
            border: InputBorder.none,
            icon: SvgPicture.asset('images/icons/search.svg'),
            hintText: "Search Here",
            helperStyle: TextStyle(color: kSecondaryColor,)
        ),
      ),
    );
  }
}
