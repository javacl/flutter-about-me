// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;

import '../../database_imports.dart' as _i414;
import '../data_source/article/article_dao.dart' as _i524;
import '../data_source/article/article_local_data_source_impl.dart' as _i773;
import '../db/app_database.dart' as _i951;
import 'database_module.dart' as _i384;

// initializes the registration of main-scope dependencies inside of GetIt
_i174.GetIt $initDatabaseDI(
  _i174.GetIt getIt, {
  String? environment,
  _i526.EnvironmentFilter? environmentFilter,
}) {
  final gh = _i526.GetItHelper(getIt, environment, environmentFilter);
  final databaseModule = _$DatabaseModule();
  gh.lazySingleton<_i951.AppDatabase>(() => databaseModule.provideDatabase());
  gh.lazySingleton<_i524.ArticleDao>(
    () => databaseModule.provideArticleDao(gh<_i951.AppDatabase>()),
  );
  gh.lazySingleton<_i414.ArticleLocalDataSource>(
    () => _i773.ArticleLocalDataSourceImpl(gh<_i951.AppDatabase>()),
  );
  return getIt;
}

class _$DatabaseModule extends _i384.DatabaseModule {}
