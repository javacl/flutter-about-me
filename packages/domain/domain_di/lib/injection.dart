import 'package:main_domain/main_domain.dart';
import 'package:articles_domain/articles_domain.dart';
import 'package:article_domain/article_domain.dart';
import 'package:profile_domain/profile_domain.dart';

void configureDomainDependencies() {
  configureMainDomainDependencies();
  configureArticlesDomainDependencies();
  configureArticleDomainDependencies();
  configureProfileDomainDependencies();
}
