import 'package:json_annotation/json_annotation.dart';
import 'package:network/src/model/article/article_response.dart';

part 'articles_response.g.dart';

@JsonSerializable()
class ArticlesResponse {
  final List<ArticleResponse>? articles;

  ArticlesResponse({this.articles});

  factory ArticlesResponse.fromJson(Map<String, dynamic> json) =>
      _$ArticlesResponseFromJson(json);

  Map<String, dynamic> toJson() => _$ArticlesResponseToJson(this);
}
