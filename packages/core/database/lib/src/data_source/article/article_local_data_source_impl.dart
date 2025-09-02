import 'package:database/database_imports.dart';
import 'package:database/src/data_source/article/article_dao.dart';
import 'package:database/src/data_source/article/article_local_data_source.dart';
import 'package:database/src/db/app_database.dart';
import 'package:database/src/mapper/article/article_mapper.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: ArticleLocalDataSource)
class ArticleLocalDataSourceImpl implements ArticleLocalDataSource {
  final AppDatabase _database;
  late final ArticleDao _articleDao;

  ArticleLocalDataSourceImpl(this._database) {
    _articleDao = _database.articleDao;
  }

  @override
  Stream<List<ArticleEntity>> getArticles() {
    return _articleDao.getArticles().map(
      (rows) => rows.map((article) => article.toArticleEntity()).toList(),
    );
  }

  @override
  Stream<ArticleEntity?> getArticle(int id) {
    return _articleDao
        .getArticle(id)
        .map((article) => article?.toArticleEntity());
  }

  @override
  Future<void> insertOrReplaceArticles({
    required bool clear,
    required List<ArticleEntity> articles,
  }) async {
    await _database.transaction(() async {
      if (clear) {
        await _articleDao.clearArticles();
      }
      final companions = articles.map((e) => e.toArticlesCompanion()).toList();
      await _articleDao.insertOrReplaceArticles(companions);
    });
  }
}
