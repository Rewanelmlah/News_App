import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:news_app/services/news_service.dart';
import 'package:news_app/widgets/categories_list_view.dart';
import 'package:news_app/widgets/category_card.dart';
import 'package:news_app/widgets/news_tile.dart';

import '../models/article_model.dart';
import '../widgets/news_list_view.dart';
import '../widgets/news_list_view_builder.dart';
class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text('Latest ',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
            Text('News',style: TextStyle(color: Colors.orange,fontWeight: FontWeight.bold),),
          ],
        ),),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
       child: CustomScrollView(
         physics: BouncingScrollPhysics(),
         slivers: [
           SliverToBoxAdapter(child:CategoriesListView() ,),
           SliverToBoxAdapter(child: SizedBox(height: 32,),),
          NewsListViewBuilder(category: 'general',),
         ],
       ),
        ),
      );
  }
}

