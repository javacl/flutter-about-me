import 'package:article_data/src/model/article_data_model.dart';
import 'package:database/database.dart';

extension ArticleEntityMapper on ArticleEntity {
  ArticleDataModel toArticleDataModel() => ArticleDataModel(
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
