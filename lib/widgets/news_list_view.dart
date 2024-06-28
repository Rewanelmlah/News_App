import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:news_app/services/news_service.dart';
import '../models/article_model.dart';
import 'news_tile.dart';


class NewasLIstView extends StatelessWidget{
  List<ArticleModel> articles;
  NewasLIstView({super.key,required this.articles});

  @override
  Widget build(BuildContext context) {
    return SliverList(delegate:
    SliverChildBuilderDelegate(childCount: articles.length,
            (context, index){
           return Padding(
            padding: const EdgeInsets.only(bottom: 22,),
            child: NewsTile(
              articleModel: articles[index],
            ),
          );
        }
    ));
  }
}
