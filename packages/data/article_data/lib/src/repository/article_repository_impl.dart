import 'package:article_data/src/mapper/article_entity_mapper.dart';
import 'package:article_data/src/model/article_data_model.dart';
import 'package:article_data/src/repository/article_repository.dart';
import 'package:common/result/project_result.dart';
import 'package:common/result/unit.dart';
import 'package:database/database.dart';
import 'package:injectable/injectable.dart';
import 'package:network/network.dart';

@LazySingleton(as: ArticleRepository)
class ArticleRepositoryImpl implements ArticleRepository {
  final ArticleRemoteDataSource _articleRemoteDataSource;
  final ArticleLocalDataSource _articleLocalDataSource;

  ArticleRepositoryImpl(
    this._articleRemoteDataSource,
    this._articleLocalDataSource,
  );

  @override
  Stream<ProjectResult<Unit>> getArticlesRemote(int page) async* {
    final result = _articleRemoteDataSource.getArticles(page);

    switch (result) {
      case Error():
        yield result as ProjectResult<Unit>;
      case Success(:final data):
        final entities = data.map((e) => e.toArticleEntity()).toList();
        await _articleLocalDataSource.insertOrReplaceArticles(
          clear: page == 1,
          articles: entities,
        );
        yield const Success(Unit());
    }
  }

  @override
  Stream<List<ArticleDataModel>> getArticlesLocal() {
    return _articleLocalDataSource.getArticles().map(
      (articles) =>
          articles.map((article) => article.toArticleDataModel()).toList(),
    );
  }
}
