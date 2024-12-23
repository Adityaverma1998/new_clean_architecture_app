import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:news_app/core/network/network_client.dart';
import 'package:news_app/core/shared/constant.dart';

class ServiceLocator {

  final serviceLocator = GetIt.instance;

  setupServiceLocator() async{
    serviceLocator.registerFactory<Constant>(()=>Constant());
     serviceLocator.registerFactory<Dio>(
    () => NetworkClient(Dio(), constant: serviceLocator()).dio,
  );
  }
}