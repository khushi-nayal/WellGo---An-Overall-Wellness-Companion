class FeedbackModel {
  String url;
  String title;
  String views;
  String likes;
  String dislikes;

  FeedbackModel(
      { this.url, this.title, this.views, this.likes,  this.dislikes});
     
  factory FeedbackModel.fromJson(dynamic json) {
    //print("hlo");
    return FeedbackModel(
      url: "${json['url']}",
      title: "${json['title']}",
       views: "${json['views']}",
      likes: "${json['likes']}",
     dislikes: "${json['dislikes']}",
     
    );
     
  }

  Map toJson() => {
        "url": url,
        "title": title,
        "views": views,
        "likes": likes,
        "dislikes": dislikes
      };
}