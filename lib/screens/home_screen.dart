import 'package:flutter/material.dart';
import 'package:hyfic_mvp_drawer/utils/colors.dart';
import 'package:hyfic_mvp_drawer/widgets/custom_app_bar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appPrimaryColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              CustomAppBar(),
            ],
          ),
        ),
      ),
    );
  }
}