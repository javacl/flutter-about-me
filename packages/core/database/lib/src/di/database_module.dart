import 'dart:io';

import 'package:database/src/data_source/article/article_dao.dart';
import 'package:database/src/db/app_database.dart';
import 'package:drift/drift.dart';
import 'package:drift/native.dart';
import 'package:injectable/injectable.dart';
import 'package:path/path.dart' as p;
import 'package:path_provider/path_provider.dart';

@module
abstract class DatabaseModule {
  @lazySingleton
  AppDatabase provideDatabase() {
    return AppDatabase(
      LazyDatabase(() async {
        final dbFolder = await getApplicationDocumentsDirectory();
        final file = File(
          p.join(dbFolder.path, 'flutterAboutMeDatabase.sqlite'),
        );
        return NativeDatabase(file);
      }),
    );
  }

  @lazySingleton
  ArticleDao provideArticleDao(AppDatabase db) => db.articleDao;
}
