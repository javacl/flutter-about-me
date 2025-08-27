import 'package:database/src/db/app_database.dart';
import 'package:database/src/model/article/article_entity.dart';
import 'package:drift/drift.dart';

extension ArticleMapper on Article {
  ArticleEntity toArticleEntity() => ArticleEntity(
    id: id,
    author: author,
    title: title,
    description: description,
    url: url,
    urlToImage: urlToImage,
    publishedAt: publishedAt,
    content: content,
  );
}

extension ArticleEntityMapper on ArticleEntity {
  ArticlesCompanion toArticlesCompanion() => ArticlesCompanion(
    id: Value(id),
    author: Value(author),
    title: Value(title),
    description: Value(description),
    url: Value(url),
    urlToImage: Value(urlToImage),
    publishedAt: Value(publishedAt),
    content: Value(content),
  );
}
