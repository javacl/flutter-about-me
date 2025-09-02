import 'package:main_domain/main_domain_imports.dart';
import 'package:articles_domain/articles_domain_imports.dart';
import 'package:article_domain/article_domain_imports.dart';
import 'package:profile_domain/profile_domain_imports.dart';

void configureDomainDependencies() {
  configureMainDomainDependencies();
  configureArticlesDomainDependencies();
  configureArticleDomainDependencies();
  configureProfileDomainDependencies();
}
