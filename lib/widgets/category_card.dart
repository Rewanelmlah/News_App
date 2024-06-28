import 'package:flutter/material.dart';
import 'package:news_app/Views/category_view.dart';
import 'package:news_app/models/category_model.dart';
class CategoryCard extends StatelessWidget {
  const CategoryCard({super.key, required this.category});
  final CategoryModel category;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.of(context).push(MaterialPageRoute(builder: (context){
          return CategoryView(
            category: category.categoryName,
          );
        }));
      },
      child: Padding(
        padding: const EdgeInsets.only(right: 16),
        child: Container(
          height:100 ,
          width: 170,
          decoration: BoxDecoration(
            image: DecorationImage(fit:BoxFit.fill,
                image: AssetImage(category.imageAssetUrl)),
            color: Colors.amberAccent,
            borderRadius: BorderRadius.circular(12),
          ),
          child: Center(child: Text(category.categoryName,style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),)),),
      ),
    )
    ;
  }
}
