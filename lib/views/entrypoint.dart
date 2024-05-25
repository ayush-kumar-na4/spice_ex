import 'package:flutter/material.dart';
import 'package:spice_ex/constants/constants.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: hieght,
            width: width,
            color: kOffWhite,
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Theme(
              
              data: Theme.of(context).copyWith(canvasColor: kPrimary),
              child: BottomNavigationBar(
                
                showSelectedLabels: false,
                showUnselectedLabels: false,
                unselectedIconTheme: const IconThemeData(color: Colors.black38),
                selectedIconTheme: const IconThemeData(color: kSecondary),
                onTap: (value) => print(value),// this value is the index of slected BarItem
                items: const [
                  BottomNavigationBarItem(
                      icon: Icon(Icons.home), label: "Home"),
                  BottomNavigationBarItem(
                      icon: Icon(Icons.search), label: "Search"),
                  BottomNavigationBarItem(
                      icon: Icon(Icons.shopping_cart), label: "Cart"),
                  BottomNavigationBarItem(
                      icon: Icon(Icons.person), label: "Profile"),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
