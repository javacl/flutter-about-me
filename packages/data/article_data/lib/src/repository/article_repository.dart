import 'package:article_data/src/model/article_data_model.dart';
import 'package:common/result/project_result.dart';

abstract class ArticleRepository {
  Stream<List<ArticleDataModel>> getArticlesLocal();

  Stream<ArticleDataModel?> getArticleLocal(int id);

  Future<ProjectResult<void>> getArticlesRemote(int page);
}
