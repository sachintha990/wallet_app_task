import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:wallet_app_task/screens/main_pages/home_screen.dart';
import 'package:wallet_app_task/screens/main_pages/profile_screen.dart';
import 'package:wallet_app_task/screens/main_pages/more_screen.dart';
import 'package:wallet_app_task/screens/main_pages/wallet_screen.dart';
import 'package:wallet_app_task/utils/colors.dart';

class Mainscreen extends StatefulWidget {
  const Mainscreen({super.key});

  @override
  State<Mainscreen> createState() => _MainscreenState();
}

class _MainscreenState extends State<Mainscreen> {
  int _selectedIndex = 0;

  static const List<Widget> _pages = <Widget>[
    HomeScreen(),
    WalletScreen(),
    ProfileScreen(),
    MoreScreen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _pages.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: ClipRRect(
        borderRadius: BorderRadius.circular(100),
        child: BottomNavigationBar(
          type: BottomNavigationBarType.shifting,
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                'assets/icons/home.svg',
                colorFilter: ColorFilter.mode(
                  _selectedIndex == 0
                      ? AppColors.primaryBlue
                      : AppColors.primaryGrey,
                  BlendMode.srcIn,
                ),
                semanticsLabel: 'My SVG Image',
              ),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                'assets/icons/wallet.svg',
                colorFilter: ColorFilter.mode(
                  _selectedIndex == 1
                      ? AppColors.primaryBlue
                      : AppColors.primaryGrey,
                  BlendMode.srcIn,
                ),
                semanticsLabel: 'My SVG Image',
                height: 25,
                width: 25,
              ),
              label: 'Wallet',
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                'assets/icons/profile.svg',
                colorFilter: ColorFilter.mode(
                  _selectedIndex == 2
                      ? AppColors.primaryBlue
                      : AppColors.primaryGrey,
                  BlendMode.srcIn,
                ),
                semanticsLabel: 'My SVG Image',
              ),
              label: 'Profile',
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                'assets/icons/ellipsis.svg',
                colorFilter: ColorFilter.mode(
                  _selectedIndex == 4
                      ? AppColors.primaryBlue
                      : AppColors.primaryGrey,
                  BlendMode.srcIn,
                ),
                semanticsLabel: 'My SVG Image',
              ),
              label: 'More',
            ),
          ],
          currentIndex: _selectedIndex,
          selectedItemColor: AppColors.primaryBlue,
          unselectedItemColor: AppColors.primaryGrey,
          onTap: _onItemTapped,
        ),
      ),
    );
  }
}
