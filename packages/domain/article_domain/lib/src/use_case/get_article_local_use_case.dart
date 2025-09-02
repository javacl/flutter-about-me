import 'package:article_data/article_data_imports.dart';
import 'package:article_domain/src/mapper/article_data_model_mapper.dart';
import 'package:article_domain/src/model/article_domain_model.dart';
import 'package:injectable/injectable.dart';

@Injectable()
class GetArticleLocalUseCase {
  final ArticleRepository _articleRepository;

  GetArticleLocalUseCase(this._articleRepository);

  Stream<ArticleDomainModel?> call(int id) {
    return _articleRepository.getArticleLocal(id).map((article) {
      return article?.toArticleDomainModel();
    });
  }
}
