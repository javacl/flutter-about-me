import 'package:article_data/article_data.dart';
import 'package:injectable/injectable.dart';

@Injectable()
class GetArticlesRemoteUseCase {
  final ArticleRepository _articleRepository;

  GetArticlesRemoteUseCase(this._articleRepository);

  Stream<void> call(int page) {
    return _articleRepository.getArticlesRemote(page);
  }
}
