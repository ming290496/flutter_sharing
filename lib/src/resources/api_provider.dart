import 'dart:convert';
import 'package:flutter_sharing/src/model/FeedResponseModel.dart';
import 'package:http/http.dart' show Client;

class ApiProvider {
  Client client = Client();
  final _root = 'http://www.mocky.io/v2/';

  Future<FeedResponseModel> getFeed() async {
    final response =
        await client.get('${_root}5dda99763100005000605e69?mocky-delay=0ms');
    final parsedJson = json.decode(response.body);
    return FeedResponseModel.fromJson(parsedJson);
  }
}
