import 'package:bloc/bloc.dart';
import 'package:ecommerce/featurs/login/data/repository/login_repostiory.dart';
import 'package:flutter/cupertino.dart';

import '../data/models/login_requset_model.dart';
import '../data/models/login_respose_model.dart';

part 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit(this.loginRepository) : super(LoginInitial());
  LoginRepository loginRepository;

  TextEditingController userNameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  Future<void> login() async {
    emit(LoginLoading());

     if (!formKey.currentState!.validate()) {
      return;
    }
    try {
      var loginRequestModel = LoginRequestModel(
        userName: userNameController.text,
        password: passwordController.text,
        expiresInMins: 60
      );
      final result = await loginRepository.loginUser(loginRequestBody: loginRequestModel);
      if (result.isSuccess) {
        emit(LoginSuccess(result.data!));
      } else {
        emit(LoginError(result.error!));
      }
    } catch (e) {
      emit(LoginError(e.toString()));
    }
  }
}
