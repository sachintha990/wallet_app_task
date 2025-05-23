import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:wallet_app_task/screens/main_pages/home_screen.dart';
import 'package:wallet_app_task/screens/main_pages/profile_screen.dart';
import 'package:wallet_app_task/screens/main_pages/more_screen.dart';
import 'package:wallet_app_task/screens/main_pages/wallet_screen.dart';
import 'package:wallet_app_task/utils/colors.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
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
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showDialog(
            context: context,
            builder: (BuildContext context) {
              return AlertDialog(
                title: const Text('Coming Soon'),
                content: const Text('This feature is coming soon!'),
                actions: <Widget>[
                  TextButton(
                    child: const Text('OK'),
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                  ),
                ],
              );
            },
          );
        },
        backgroundColor: Colors.transparent,
        elevation: 0,
        child: SvgPicture.asset(
          'assets/icons/radio-button-checked.svg',
          height: 80,
        ),
      ),
      body: Center(
        child: _pages.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: ClipRRect(
        borderRadius: BorderRadius.circular(100),
        child: BottomNavigationBar(
          backgroundColor: AppColors.primaryWhite,
          elevation: 1,
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
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
