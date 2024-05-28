import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:spice_ex/constants/constants.dart';
import 'package:spice_ex/controllers/tab_index_controller.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:spice_ex/views/cart/cart_page.dart';
import 'package:spice_ex/views/home/home_page.dart';
import 'package:spice_ex/views/profile/profile_page.dart';
import 'package:spice_ex/views/search/search_page.dart';

class MainScreen extends StatelessWidget {
  MainScreen({super.key});

  final List<Widget> pageList = [
    HomePage(),
    SearchPage(),
    CartPage(),
    ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(TabIndexController());
    return Obx(() => Scaffold(
          body: Stack(
            children: [
              pageList[controller.tabindex],
              Align(
                alignment: Alignment.bottomCenter,
                child: Theme(
                  data: Theme.of(context).copyWith(canvasColor: kPrimary),
                  child: BottomNavigationBar(
                    showSelectedLabels: false,
                    showUnselectedLabels: false,
                    unselectedIconTheme:
                        const IconThemeData(color: Colors.black38),
                    selectedIconTheme: const IconThemeData(color: kSecondary),
                    onTap: (value) {
                      controller.setTabIndexValue = value;
                    },
                    currentIndex: controller.tabindex,
                    // this value is the index of slected BarItem
                    items: [
                      BottomNavigationBarItem(
                          icon: controller.tabindex == 0
                              ? const Icon(AntDesign.appstore1)
                              : const Icon(AntDesign.appstore_o),
                          label: "Home"),
                      const BottomNavigationBarItem(
                          icon: Icon(Icons.search), label: "Search"),
                      const BottomNavigationBarItem(
                          icon: Badge(
                            label: Text('1'),
                            child: Icon(FontAwesome.opencart),
                          ),
                          label: "Cart"),
                      BottomNavigationBarItem(
                          icon: controller.tabindex == 3
                              ? const Icon(FontAwesome.user_circle)
                              : const Icon(FontAwesome.user_circle_o),
                          label: "Profile"),
                    ],
                  ),
                ),
              )
            ],
          ),
        ));
  }
}
