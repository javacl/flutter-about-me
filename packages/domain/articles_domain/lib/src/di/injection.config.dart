// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:article_data/article_data.dart' as _i464;
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;

import '../use_case/get_articles_local_use_case.dart' as _i127;
import '../use_case/get_articles_remote_use_case.dart' as _i978;

// initializes the registration of main-scope dependencies inside of GetIt
_i174.GetIt $initArticlesDomainDI(
  _i174.GetIt getIt, {
  String? environment,
  _i526.EnvironmentFilter? environmentFilter,
}) {
  final gh = _i526.GetItHelper(getIt, environment, environmentFilter);
  gh.factory<_i127.GetArticlesLocalUseCase>(
    () => _i127.GetArticlesLocalUseCase(gh<_i464.ArticleRepository>()),
  );
  gh.factory<_i978.GetArticlesRemoteUseCase>(
    () => _i978.GetArticlesRemoteUseCase(gh<_i464.ArticleRepository>()),
  );
  return getIt;
}
