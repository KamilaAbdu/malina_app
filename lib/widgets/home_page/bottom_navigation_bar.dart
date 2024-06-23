import 'package:flutter/material.dart';
import 'package:malina_app/constants/app_colors.dart';
import 'package:malina_app/pages/profile_page.dart';

class MainPageBottomNavigationBar extends StatelessWidget {
  const MainPageBottomNavigationBar({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.dashboard),
          label: 'Лента',
        ),
        BottomNavigationBarItem(icon: Icon(Icons.favorite), label: 'Избранное',),
        BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Профиль', activeIcon: ProfilePage(),),
        BottomNavigationBarItem(icon: Icon(Icons.shopping_basket), label: 'Корзина'),
      ],
      selectedItemColor: AppColors.selectedItem,
      unselectedItemColor: Colors.grey,
    );
  }
}
