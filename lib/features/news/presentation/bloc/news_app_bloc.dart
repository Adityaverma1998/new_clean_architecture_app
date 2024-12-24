import 'package:bloc/bloc.dart';
import 'package:news_app/core/di/service_locator.dart';
import 'package:news_app/features/news/domain/entity/news_entity.dart';
import 'package:news_app/features/news/domain/usecase/get_recent_news_usecase.dart';

part 'news_app_event.dart';
part 'news_app_state.dart';

class MainNewsBloc extends Bloc<NewsEvent, NewsState> {
  MainNewsBloc() : super(NewsInitialState()) {
    on<FetchNewsEvent>(_handleFetchNewsEvent);
  }

  Future<void> _handleFetchNewsEvent(
      FetchNewsEvent event, Emitter<NewsState> emit) async {
    try {
      emit(NewsLoadingState());
      // Call the use case to fetch news
      List<NewsEntity> news =
          await serviceLocator<GetRecentNewsUseCase>().call();
      emit(NewsSucessState(newsData: news));
    } catch (e) {
      emit(NewsErrorState("Something went wrong"));
    }
  }
}
