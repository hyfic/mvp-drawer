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
                        children: const [
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
              const DrawerItem(
                icon: Icons.home,
                title: 'Home',
                color: appAccentColor,
              ),
              const DrawerItem(
                icon: Icons.chat_bubble_outline,
                title: 'Chat',
              ),
              const DrawerItem(
                icon: Icons.ac_unit_rounded,
                title: 'Pro',
              ),
              const DrawerItem(
                icon: Icons.supervised_user_circle_outlined,
                title: 'Profile',
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

class DrawerItem extends StatelessWidget {
  final String title;
  final IconData icon;
  final Color color;

  const DrawerItem({
    Key? key,
    required this.title,
    required this.icon,
    this.color = appTextOpacityColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: appSecondaryColor,
      child: InkWell(
        splashColor: appTextOpacityColor.withOpacity(0.3),
        onTap: () {},
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Row(
            children: [
              Icon(
                icon,
                color: color,
                size: 22.0,
              ),
              SizedBox(width: 10.0),
              Text(
                title,
                style: TextStyle(
                  color: color,
                  fontSize: 18.0,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
