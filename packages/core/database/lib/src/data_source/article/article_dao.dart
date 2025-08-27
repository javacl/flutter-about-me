import 'package:database/src/db/app_database.dart';
import 'package:database/src/table/article/article_table.dart';
import 'package:drift/drift.dart';

part 'article_dao.g.dart';

@DriftAccessor(tables: [Articles])
class ArticleDao extends DatabaseAccessor<AppDatabase> with _$ArticleDaoMixin {
  ArticleDao(super.db);

  Stream<List<Article>> getArticles() => select(articles).watch();

  Stream<Article?> getArticle(int id) =>
      (select(articles)..where((tbl) => tbl.id.equals(id))).watchSingleOrNull();

  Future<void> insertOrReplaceArticles(
    List<ArticlesCompanion> companions,
  ) async {
    await batch((batch) {
      batch.insertAll(articles, companions, mode: InsertMode.insertOrReplace);
    });
  }

  Future<void> clearArticles() => delete(articles).go();
}
