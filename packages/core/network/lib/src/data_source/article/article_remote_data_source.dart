import 'package:common/result/project_result.dart';
import 'package:network/src/model/article/articles_response.dart';

abstract class ArticleRemoteDataSource {
  Stream<ProjectResult<ArticlesResponse>> getArticles(int page);
}
