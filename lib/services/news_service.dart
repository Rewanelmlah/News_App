import 'package:dio/dio.dart';
import 'package:news_app/models/article_model.dart';

class NewsService{
  final Dio dio;
  NewsService(this.dio);

  Future<List<ArticleModel>> getTopHeadlines({required String category})async{
    try {
      var response = await dio.get('https://newsapi.org/v2/top-headlines?country=us&apiKey=99b7ce6d61ba46efa75ce7d0c7ed6cfd&category=$category');

       Map<String,dynamic> jsonData = response.data;
       List<dynamic> articles= jsonData['articles'];
       List<ArticleModel> articlesList =[];
       for (var article in articles){
         ArticleModel articleModel =ArticleModel.fromJson(article);
          articlesList.add(articleModel);
       }
       return articlesList;
    }  catch (e) {
      // TODO
      return[];
    }
  }
}