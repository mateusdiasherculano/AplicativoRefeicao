import 'package:flutter/material.dart';

import 'package:meals/screens/categories_meals_screen.dart';
import 'package:meals/utils/app_routes.dart';

import '../models/category.dart';

class CategoryItem extends StatelessWidget {
  final Category category;

  CategoryItem(this.category);

  void _selectCategory(BuildContext context) {
    //  Navigator.of(context).push(
    //    MaterialPageRoute(
    //      builder: (_) {
    //        return CategoriesMealsScreen(category);
    //      },
    //    ),
    //  );
    Navigator.of(context).pushNamed(
      AppRoutes.HOME,
      arguments: category,
    );
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => _selectCategory(context),
      borderRadius: BorderRadius.circular(15),
      child: Container(
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          gradient: LinearGradient(
            colors: [
              category.color.withOpacity(0.5),
              category.color,
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: Text(
          category.title,
          style: Theme.of(context).textTheme.subtitle1,
        ),
      ),
    );
  }
}
