import 'package:flutter_sharing/src/model/FeedModel.dart';
import 'package:flutter_sharing/src/model/FeedResponseModel.dart';
import 'package:flutter_sharing/src/resources/repository.dart';
import 'package:rxdart/rxdart.dart';

class HomeBloc {
  Repository _repository = Repository();

  final _feeds = BehaviorSubject<FeedResponseModel>();

  Stream<FeedResponseModel> get feeds => _feeds.stream;

  Function(FeedResponseModel) get addFeeds => _feeds.sink.add;

  getFeed() async {
    addFeeds(null);
    final response = await _repository.getFeed();
    print(response.toJson());
    addFeeds(response);
  }

  dispose() {
    _feeds.close();
  }
}
