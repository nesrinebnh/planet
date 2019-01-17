class Post {
  final int userId;
  final int id;
  final String title;
  final String body;
  final String picture;
  final String clip;

  Post({this.userId, this.id, this.title, this.body, this.picture,this.clip});

  factory Post.fromJson(Map<String, dynamic> json) {
    return Post(
      userId: json['userId'] as int,
      id: json['id'] as int,
      title: json['title'] as String,
      body: json['body'] as String,
      picture: json['picture'] as String,
      clip : json['clip'] as String,
    );
  }
}