import 'package:article_data/article_data_imports.dart';
import 'package:articles_domain/src/mapper/article_data_model_mapper.dart';
import 'package:articles_domain/src/model/article_domain_model.dart';
import 'package:injectable/injectable.dart';

@Injectable()
class GetArticlesLocalUseCase {
  final ArticleRepository _articleRepository;

  GetArticlesLocalUseCase(this._articleRepository);

  Stream<List<ArticleDomainModel>> call() {
    return _articleRepository.getArticlesLocal().map((list) {
      return list.map((article) => article.toArticleDomainModel()).toList();
    });
  }
}
