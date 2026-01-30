import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_app_flutter_v1/bloc/news_state.dart';
import 'package:news_app_flutter_v1/services/news_services.dart';

class NewsCubit extends Cubit<NewsState> {
  NewsCubit() : super(NewsInitial());

  final NewsServices newsServices = NewsServices();

  // get all dat
  Future<void> getAllData() async {
    emit(NewsLoading());
    try {
      final posts = await newsServices.getAllData();
      emit(NewsLoaded(posts));
    } catch (e) {
      throw Exception('الايرور $e');
    }
  }

  Future<void> getPost(int id) async {
    emit(PostLoading());
    try {
      final post = await newsServices.getOnePost(id);
      emit(PostLoaded(post));
    } catch (e) {
      throw Exception(e);
    }
  }
}
