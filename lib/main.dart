import 'package:ecommerce/core/di/di.dart';
import 'package:ecommerce/featurs/register/logic/register_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'featurs/login/logic/login_cubit.dart';
import 'my_app.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  setupLocator();
  runApp(MultiBlocProvider(
    providers: [
      BlocProvider(
        create: (_) => getIt<LoginCubit>(),
      ),
      BlocProvider(create: (_)=>getIt<RegisterCubit>())
    ],
    child: const MyApp(),
  ));
}
