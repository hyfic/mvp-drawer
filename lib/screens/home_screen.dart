import 'package:flutter/material.dart';
import 'package:hyfic_mvp_drawer/utils/colors.dart';
import 'package:hyfic_mvp_drawer/widgets/custom_app_bar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appPrimaryColor,
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.home_outlined),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.home_outlined),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.home_outlined),
            ),
          ],
        ),
      ),
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
