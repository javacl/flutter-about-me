import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:network/src/data_source/article/article_api_service.dart';
import 'package:network/src/model/article/articles_response.dart';

@LazySingleton(as: ArticleApiService)
class ArticleApiServiceImpl implements ArticleApiService {
  final Dio _dio;

  ArticleApiServiceImpl(this._dio) {
    _dio.options.baseUrl = "https://newsapi.org/v2/";
  }

  @override
  Stream<Response<ArticlesResponse>> getArticles(int page) async* {
    final response = await _dio.get(
      "everything",
      queryParameters: {
        "apiKey": "10307e6f365542929dd5d0a9ed2395bb",
        "q": "apple",
        "page": page,
      },
    );
    yield Response(
      data: ArticlesResponse.fromJson(response.data),
      requestOptions: response.requestOptions,
    );
  }
}
