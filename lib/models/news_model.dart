class NewsModel {
  final List<Post> posts;
  final int total;
  final int skip;
  final int limit;

  NewsModel({
    required this.posts,
    required this.total,
    required this.skip,
    required this.limit,
  });

  factory NewsModel.fromJson(Map<String, dynamic> json) {
    return NewsModel(
      posts: (json['posts'] as List)
          .map((postJson) => Post.fromJson(postJson))
          .toList(),
      total: json['total'],
      skip: json['skip'],
      limit: json['limit'],
    );
  }
}

class Post {
  final int id;
  final String title;
  final String body;
  final List<String> tags;
  final Reactions reactions;
  final int views;
  final int userId;

  Post({
    required this.id,
    required this.title,
    required this.body,
    required this.tags,
    required this.reactions,
    required this.views,
    required this.userId,
  });

  factory Post.fromJson(Map<String, dynamic> json) {
    return Post(
      id: json['id'],
      title: json['title'],
      body: json['body'],
      tags: List<String>.from(json['tags']),
      reactions: Reactions.fromJson(json['reactions']),
      views: json['views'],
      userId: json['userId'],
    );
  }
}

class Reactions {
  final int likes;
  final int dislikes;

  Reactions({required this.likes, required this.dislikes});

  factory Reactions.fromJson(Map<String, dynamic> json) {
    return Reactions(likes: json['likes'], dislikes: json['dislikes']);
  }
}
