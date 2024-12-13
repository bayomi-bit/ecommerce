import 'package:dio/dio.dart';
import 'package:ecommerce/core/network/api_consumer.dart';
import 'package:ecommerce/featurs/login/data/repository/login_repository_impl.dart';
import 'package:ecommerce/featurs/login/logic/login_cubit.dart';
import 'package:ecommerce/featurs/register/data/repository/register_repository.dart';
import 'package:ecommerce/featurs/register/data/repository/register_repository_impl.dart';
import 'package:ecommerce/featurs/register/logic/register_cubit.dart';
import 'package:get_it/get_it.dart';

import '../../featurs/login/data/repository/login_repostiory.dart';
import '../network/dio_network/dio_service.dart';
import '../network/dio_network/diofactory.dart';
var getIt = GetIt.instance;

void setupLocator() {
  getIt.registerLazySingleton<Dio>(() =>DioFcatory().dio);
  getIt.registerLazySingleton<ApiConsumer>(() => DioService(getIt<Dio>()));

  getIt.registerLazySingleton<LoginRepository>(()=>(LoginRepositoryImpl(getIt<ApiConsumer>())));
  getIt.registerLazySingleton<LoginCubit>(()=>LoginCubit(getIt<LoginRepository>()));

  getIt.registerLazySingleton<RegisterRepository>(()=>RegisterRepositoryImpl(getIt<ApiConsumer>()));
  getIt.registerLazySingleton<RegisterCubit>(()=>RegisterCubit(getIt<RegisterRepository>()));


}