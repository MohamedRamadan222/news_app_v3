import 'package:dio/dio.dart';
import 'package:news_app_flutter_v1/models/news_model.dart';

class NewsServices {
  Dio dio = Dio(BaseOptions(baseUrl: 'https://dummyjson.com'));

  Future<List<Post>> getAllData() async {
    try {
      final response = await dio.get('/posts');
      final newsModel = NewsModel.fromJson(response.data);
      return newsModel.posts;
    } catch (e) {
      throw Exception('Error$e');
    }
  }

  Future<Post> getOnePost(int id) async {
    try {
      final res = await dio.get('/posts/$id');
      final post = Post.fromJson(res.data);
      return post;
    } catch (e) {
      throw Exception(e);
    }
  }
}
