import 'package:flutter_sharing/src/model/FeedResponseModel.dart';
import 'package:flutter_sharing/src/resources/api_provider.dart';

class Repository{
  ApiProvider apiProvider = ApiProvider();
  Future<FeedResponseModel> getFeed() async{
    return await apiProvider.getFeed();
  }
}