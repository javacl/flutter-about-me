import 'dart:io';

import 'package:database/src/data_source/coin/coin_dao.dart';
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
        final file = File(p.join(dbFolder.path, 'bitzy.sqlite'));
        return NativeDatabase(file);
      }),
    );
  }

  @lazySingleton
  CoinDao provideCoinDao(AppDatabase db) => db.coinDao;
}
