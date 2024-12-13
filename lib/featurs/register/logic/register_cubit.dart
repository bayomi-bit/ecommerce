import 'package:bloc/bloc.dart';
import 'package:ecommerce/featurs/register/data/models/register_requset_model.dart';
import 'package:ecommerce/featurs/register/data/repository/register_repository.dart';
import 'package:flutter/cupertino.dart';
import 'package:meta/meta.dart';

import '../data/models/register_response_model.dart';

part 'register_state.dart';

class RegisterCubit extends Cubit<RegisterState> {
  RegisterCubit(this.registerRepository) : super(RegisterInitial());
  RegisterRepository registerRepository;
  TextEditingController userNameController =TextEditingController();
  TextEditingController emailController =TextEditingController();
  TextEditingController passwordController =TextEditingController();
  GlobalKey<FormState> formKey= GlobalKey<FormState>();


  Future register()async{
    emit(RegisterLoading());
    if(!formKey.currentState!.validate())return;


    try{
      RegisterRequestModel registerRequestBody = RegisterRequestModel(userNameController.text,
          emailController.text, passwordController.text);
      final result= await registerRepository.registerUser(registerRequestBody: registerRequestBody);
      if(result.isSuccess){
        emit(RegisterSuccess(result.data!));
      }else{
        emit(RegisterError(result.error!));
      }
    }catch(e){

      emit(RegisterError(e.toString()));
    }


  }


}
