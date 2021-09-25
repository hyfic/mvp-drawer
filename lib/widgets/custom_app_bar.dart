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
          const SizedBox(width: 15),
          const Flexible(
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Search for rooms',
                hintStyle: TextStyle(color: appTextOpacityColor),
                fillColor: appPrimaryColor,
                filled: true,
                border: OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.all(Radius.circular(10.0)),
                ),
                prefixIcon: Icon(
                  Icons.search,
                  color: appTextOpacityColor,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
