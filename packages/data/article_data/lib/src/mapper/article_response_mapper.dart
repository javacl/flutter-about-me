import 'package:article_data/src/model/article_data_model.dart';
import 'package:database/database.dart';
import 'package:network/network.dart';

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

  ArticleDataModel toArticleDataModel() => ArticleDataModel(
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
