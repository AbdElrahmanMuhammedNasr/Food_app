import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

const kPrimaryColor = Color(0xFFFFC61F);
const kSecondaryColor = Color(0xFFB5BFD0);
const kTextColor = Color(0xFF505050);
const kTextLightColor = Color(0xFF6A727D);

AppBar StateAppBar(BuildContext context){
  return AppBar(
    backgroundColor: Colors.white,
    elevation: 1,
    leading: IconButton(
      icon: SvgPicture.asset('images/icons/menu.svg'),
      onPressed: (){},
    ),
    title: Center(
      child: RichText(
          text: TextSpan(
              style: Theme.of(context).textTheme.title.copyWith(fontWeight: FontWeight.bold),
              children: [
                TextSpan(text: 'Punk', style: TextStyle(color: kSecondaryColor)),
                TextSpan(text: 'Food', style: TextStyle(color: kPrimaryColor)),
              ]
          )
      ),
    ),
    actions: [
      IconButton(
        icon: SvgPicture.asset('images/icons/notification.svg'),
        onPressed: (){},
      ),
    ],
  );
}
