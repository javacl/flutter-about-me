import 'package:database/database.dart';
import 'package:network/network.dart';

extension ArticleResponseToEntity on ArticleResponse {
  ArticleEntity toArticleEntity() => ArticleEntity(
    id: 0,
    author: author,
    title: title,
    description: description,
    url: url,
    urlToImage: urlToImage,
    publishedAt: publishedAt,
    content: content,
  );
}
