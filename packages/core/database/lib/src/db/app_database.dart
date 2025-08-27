import 'package:database/src/data_source/article/article_dao.dart';
import 'package:database/src/table/article/article_table.dart';
import 'package:drift/drift.dart';

part 'app_database.g.dart';

@DriftDatabase(tables: [Articles], daos: [ArticleDao])
class AppDatabase extends _$AppDatabase {
  AppDatabase(super.e);

  @override
  int get schemaVersion => 1;
}
