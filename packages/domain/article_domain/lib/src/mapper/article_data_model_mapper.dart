import 'package:article_data/article_data_imports.dart';
import 'package:article_domain/src/model/article_domain_model.dart';

extension ArticleDataModelMapper on ArticleDataModel {
  ArticleDomainModel toArticleDomainModel() => ArticleDomainModel(
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
