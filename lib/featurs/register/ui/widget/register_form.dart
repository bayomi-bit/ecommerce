import 'package:ecommerce/core/widgets/CustomFormTextField.dart';
import 'package:ecommerce/featurs/register/logic/register_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class RegisterForm extends StatelessWidget {
  const RegisterForm({super.key});

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<RegisterCubit>();
    return Form(
      key: cubit.formKey,


        child: Column(
          children: [
            CustomFormTextField(

                hintText: "username", labelText: "username", controller: cubit.userNameController),
            SizedBox(height: 20.h,),
            CustomFormTextField(hintText: "email", labelText: "password", controller: cubit.emailController),
            SizedBox(height: 20.sp,),
            CustomFormTextField(hintText: "password", labelText: "password", controller: cubit.passwordController),
            SizedBox(height: 20.sp,)
          ],
        ));
  }
}
