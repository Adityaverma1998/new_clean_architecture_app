part of 'news_app_bloc.dart';



abstract class NewsState{}

class NewsInitialState extends NewsState{}
class NewsLoadingState extends NewsState{}
class NewsErrorState extends NewsState{
  final String message;
  NewsErrorState(this.message);

  @override
  List<Object> get props => [message];
}

class NewsSucessState extends NewsState{
    final List<NewsEntity> newsData;
    NewsSucessState({required this.newsData});

     @override
  List<Object> get props => [newsData];

}

