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
        child: Container(
          color: appSecondaryColor,
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              DrawerHeader(
                decoration: const BoxDecoration(
                  color: appPrimaryColor,
                  image: DecorationImage(
                    image: NetworkImage(
                      'https://i.insider.com/602ee9e3d3ad27001837f2af?width=1200&format=jpeg',
                    ),
                    fit: BoxFit.cover,
                  ),
                ),
                padding: EdgeInsets.zero,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                      width: double.infinity,
                      padding: EdgeInsets.all(10.0),
                      color: Colors.black.withOpacity(0.5),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Rick Astley',
                            style: TextStyle(
                              fontSize: 25.0,
                              color: appTextColor,
                            ),
                          ),
                          Text(
                            '@rick',
                            style: TextStyle(
                              color: appTextOpacityColor,
                              fontSize: 18.0,
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: const [
              CustomAppBar(),
            ],
          ),
        ),
      ),
    );
  }
}
