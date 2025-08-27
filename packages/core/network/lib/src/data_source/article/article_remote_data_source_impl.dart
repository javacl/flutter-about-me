import 'package:common/result/project_result.dart';
import 'package:injectable/injectable.dart';
import 'package:network/src/data_source/article/article_api_service.dart';
import 'package:network/src/data_source/article/article_remote_data_source.dart';
import 'package:network/src/model/article/articles_response.dart';
import 'package:network/src/utils/network_connectivity.dart';
import 'package:network/src/utils/network_result.dart';

@LazySingleton(as: ArticleRemoteDataSource)
class ArticleRemoteDataSourceImpl implements ArticleRemoteDataSource {
  final ArticleApiService apiService;
  final NetworkConnectivity networkConnectivity;

  ArticleRemoteDataSourceImpl(this.apiService, this.networkConnectivity);

  @override
  Stream<ProjectResult<ArticlesResponse>> getArticles(int page) {
    return checkNetworkResult<ArticlesResponse>(
      call: () => apiService.getArticles(page),
      networkConnectivity: networkConnectivity,
      errorMessage: "error get articles",
    );
  }
}
