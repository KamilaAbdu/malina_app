import 'package:flutter/material.dart';
import 'package:malina_app/constants/app_colors.dart';
import 'package:malina_app/constants/app_dimens.dart';
import 'package:malina_app/constants/app_text_styles.dart';
import 'package:malina_app/pages/main_page.dart';

class CartPage extends StatelessWidget {
  const CartPage({Key? key, required this.cartType}) : super(key: key);

  final String cartType;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        
        title:  Text('Корзина', style: AppTextStyle.s20w700.copyWith(color: AppColors.cartTitle),),
        leading: IconButton(
          padding: const EdgeInsets.symmetric(horizontal: AppDimens.mainHorizontalPadding),
          icon: const Icon(Icons.arrow_back_ios),
          iconSize: 20,
          onPressed: () {
            Navigator.pop(context);
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => MainPage(),
                ),
              );
          },
        ),
        actions: [
          IconButton(
            onPressed: () {
              
              Navigator.pop(context);
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => MainPage(),
                ),
              );
            },
            icon: const Icon(Icons.clear),
          ),
          const SizedBox(width: 16),
        ],
      ),
      body: SafeArea(
        child: Center(
          child: Text('Корзина - Товары- $cartType'),
        ),
      ),
    );
  }
}

