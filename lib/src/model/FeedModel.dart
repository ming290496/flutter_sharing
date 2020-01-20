class FeedModel {
  String avatar;
  String fullName;
  String timeDesc;
  String feedTitle;
  String feedText;
  bool isBookmarked;
  bool isFavorited;
  int totalFavorited;

  FeedModel(
      {this.avatar,
        this.fullName,
        this.timeDesc,
        this.feedTitle,
        this.feedText,
        this.isBookmarked,
        this.isFavorited,
        this.totalFavorited});

  FeedModel.fromJson(Map<String, dynamic> json) {
    avatar = json['avatar'];
    fullName = json['full_name'];
    timeDesc = json['time_desc'];
    feedTitle = json['feed_title'];
    feedText = json['feed_text'];
    isBookmarked = json['is_bookmarked'];
    isFavorited = json['is_favorited'];
    totalFavorited = json['total_favorited'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['avatar'] = this.avatar;
    data['full_name'] = this.fullName;
    data['time_desc'] = this.timeDesc;
    data['feed_title'] = this.feedTitle;
    data['feed_text'] = this.feedText;
    data['is_bookmarked'] = this.isBookmarked;
    data['is_favorited'] = this.isFavorited;
    data['total_favorited'] = this.totalFavorited;
    return data;
  }
}