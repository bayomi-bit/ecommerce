import 'package:ecommerce/featurs/login/logic/login_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/widgets/CustomButton.dart';
import '../../../../core/widgets/Loading_widget.dart';
import '../../../../core/widgets/dialog.dart';

class LoginButton extends StatelessWidget {
  const LoginButton({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<LoginCubit,LoginState>(builder: (context, state){
      if(state is LoginLoading){
        return const PrettyLoadingWidget();
      }
        return CustomButton(text: "Login", onPressed: () {

        try {
          context.read<LoginCubit>().login();
        } catch (e) {
          ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Login failed: ${e.toString()}')),
          );
          }
        } );


    }, listener: (context, state){

      if(state is LoginSuccess){
        DialogManager.showSuccessDialog(context: context, title: "Login Success",
            description: "Welcome ${state.loginResponseModel.username}", onPress: (){},
            );


      }
      if(state is LoginError){
        DialogManager.showErrorDialog(context: context, title: "Login Error", description: state.error, onPress: (){},);
      }

    });
  }
}
