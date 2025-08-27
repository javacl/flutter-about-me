import 'package:article_data/src/mapper/article_entity_mapper.dart';
import 'package:article_data/src/mapper/article_response_mapper.dart';
import 'package:article_data/src/model/article_data_model.dart';
import 'package:article_data/src/repository/article_repository.dart';
import 'package:common/result/project_result.dart';
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
  Stream<List<ArticleDataModel>> getArticlesLocal() {
    return _articleLocalDataSource.getArticles().map(
      (articles) =>
          articles.map((article) => article.toArticleDataModel()).toList(),
    );
  }

  @override
  Stream<ArticleDataModel?> getArticleLocal(int id) {
    return _articleLocalDataSource
        .getArticle(id)
        .map((entity) => entity?.toArticleDataModel());
  }

  @override
  Stream<ProjectResult<void>> getArticlesRemote(int page) async* {
    await for (final result in _articleRemoteDataSource.getArticles(page)) {
      if (result is Error) {
        yield result as ProjectResult<void>;
      } else if (result is Success<ArticlesResponse>) {
        final articles = result.data.articles ?? [];
        final entities = articles.map((e) => e.toArticleEntity()).toList();

        await _articleLocalDataSource.insertOrReplaceArticles(
          clear: page == 1,
          articles: entities,
        );

        yield const Success(null);
      }
    }
  }
}
