// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:database/database_imports.dart' as _i252;
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;
import 'package:network/network_imports.dart' as _i372;

import '../repository/article_repository.dart' as _i706;
import '../repository/article_repository_impl.dart' as _i186;

// initializes the registration of main-scope dependencies inside of GetIt
_i174.GetIt $initArticleDataDI(
  _i174.GetIt getIt, {
  String? environment,
  _i526.EnvironmentFilter? environmentFilter,
}) {
  final gh = _i526.GetItHelper(getIt, environment, environmentFilter);
  gh.lazySingleton<_i706.ArticleRepository>(
    () => _i186.ArticleRepositoryImpl(
      gh<_i372.ArticleRemoteDataSource>(),
      gh<_i252.ArticleLocalDataSource>(),
    ),
  );
  return getIt;
}
