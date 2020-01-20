import 'FeedModel.dart';

class FeedResponseModel {
  String status;
  String message;
  List<FeedModel> data;

  FeedResponseModel({this.status, this.message, this.data});

  FeedResponseModel.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    message = json['message'];
    if (json['data'] != null) {
      data = new List<FeedModel>();
      json['data'].forEach((v) {
        data.add(new FeedModel.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['status'] = this.status;
    data['message'] = this.message;
    if (this.data != null) {
      data['data'] = this.data.map((v) => v.toJson()).toList();
    }
    return data;
  }
}
