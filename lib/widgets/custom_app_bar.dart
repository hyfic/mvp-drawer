import 'package:flutter/material.dart';
import 'package:hyfic_mvp_drawer/utils/colors.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: appSecondaryColor,
      padding: EdgeInsets.all(20.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          InkWell(
            onTap: () => Scaffold.of(context).openDrawer(),
            child: Image.asset('images/logo.png', width: 30.0),
          ),
          const CircleAvatar(
            backgroundImage: NetworkImage(
              'https://pbs.twimg.com/profile_images/1374233832057053190/xftrnScS.jpg',
            ),
          )
        ],
      ),
    );
  }
}
