import 'package:database/database_imports.dart';
import 'package:network/network_imports.dart';

extension ArticleResponseMapper on ArticleResponse {
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
