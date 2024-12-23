import 'package:dio/dio.dart';
import 'package:news_app/core/shared/constant.dart';

class NetworkClient {

  final Dio _dio;
  final Constant constant;
  NetworkClient( this._dio,{  required this.constant}){
     _dio.options = BaseOptions(baseUrl: constant.apiBaseUrl);
  }
 get dio => _dio;

}