import 'package:news_app_flutter_v1/models/news_model.dart';

abstract class NewsState {}

class NewsInitial extends NewsState {}

class NewsLoading extends NewsState {}

class NewsLoaded extends NewsState {
  final List<Post> posts;

  NewsLoaded(this.posts);
}

class NewsError extends NewsState {
  final String errMsg;

  NewsError(this.errMsg);
}

class PostInitial extends NewsState {}

class PostLoading extends NewsState {}

class PostLoaded extends NewsState {
  final Post post;

  PostLoaded(this.post);
}

class PostError extends NewsState {
  final String errMsg;

  PostError(this.errMsg);
}
