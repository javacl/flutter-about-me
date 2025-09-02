import 'package:database/database_imports.dart';

abstract class ArticleLocalDataSource {
  Stream<List<ArticleEntity>> getArticles();

  Stream<ArticleEntity?> getArticle(int id);

  Future<void> insertOrReplaceArticles({
    required bool clear,
    required List<ArticleEntity> articles,
  });
}
