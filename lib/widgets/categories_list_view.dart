import 'package:flutter/material.dart';

import '../models/category_model.dart';
import 'category_card.dart';
import 'news_tile.dart';
class CategoriesListView extends StatelessWidget {
  const CategoriesListView({super.key});
  
  
final List<CategoryModel> categories = const [
  CategoryModel(imageAssetUrl: 'assets/business.jpeg', categoryName: 'Business'),
  CategoryModel(imageAssetUrl: 'assets/entertaiment.avif', categoryName: 'Entertainment'),
  CategoryModel(imageAssetUrl: 'assets/health.avif', categoryName: 'Health'),
  CategoryModel(imageAssetUrl: 'assets/science.avif', categoryName: 'Science'),
  CategoryModel(imageAssetUrl: 'assets/technology.jpeg', categoryName: 'Technology'),
  CategoryModel(imageAssetUrl: 'assets/general.jpeg', categoryName: 'General'),


];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child:ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: categories.length,
          itemBuilder: (context, index) {
            return CategoryCard(
              category: categories[index],
            );
          }),
    );
  }
}
