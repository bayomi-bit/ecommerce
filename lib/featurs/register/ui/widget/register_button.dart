import 'package:ecommerce/core/widgets/CustomButton.dart';
import 'package:ecommerce/core/widgets/dialog.dart';
import 'package:ecommerce/featurs/register/logic/register_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/widgets/Loading_widget.dart';

class RegisterButton extends StatelessWidget {
  const RegisterButton({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<RegisterCubit,RegisterState>(builder: (context,state){
      if(state is RegisterLoading){

        return const PrettyLoadingWidget();
      }
      return CustomButton(text: "register", onPressed: (){
        context.read<RegisterCubit>().register();
      });


    }, listener: (context,state){
      if(state is RegisterSuccess ){

        return DialogManager.showSuccessDialog(context: context, title: "Register success", description:
        "welcome ${state.data.firstName}", onPress: (){});
      }
      if(state is RegisterError){

        return DialogManager.showErrorDialog(context: context, title: "Register error", description: state.error, onPress: (){});
      }


    });
  }
}
