import 'package:article_data/src/model/article_data_model.dart';
import 'package:common/result/project_result.dart';
import 'package:common/result/unit.dart';

abstract class ArticleRepository {
  Stream<ProjectResult<Unit>> getArticlesRemote(int page);

  Stream<List<ArticleDataModel>> getArticlesLocal();
}
