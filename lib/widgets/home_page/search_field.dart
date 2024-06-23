import 'package:flutter/material.dart';
import 'package:malina_app/constants/app_colors.dart';
import 'package:malina_app/constants/app_dimens.dart';

class MainSearchField extends StatelessWidget {
  const MainSearchField({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: AppDimens.searchFieldHeight,
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.3),
            spreadRadius: 2,
            blurRadius: 10,
            offset: const Offset(0, 1),
          ),
        ],
      ),
      child: const TextField(
        decoration: InputDecoration(
          prefixIcon: Icon(Icons.search),
          labelText: 'Искать в Malina',
          filled: true,
          fillColor: AppColors.searchField,
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(AppDimens.mainPageBorderRadius),
            ),
            borderSide: BorderSide.none,
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(AppDimens.mainPageBorderRadius),
            ),
            borderSide: BorderSide.none,
          ),
        ),
      ),
    );
  }
}
