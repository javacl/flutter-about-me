import 'package:dio/dio.dart';
import 'package:network/src/model/article/articles_response.dart';

abstract class ArticleApiService {
  Stream<Response<ArticlesResponse>> getArticles(int page);
}
