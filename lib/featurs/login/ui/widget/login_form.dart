import 'package:ecommerce/core/widgets/CustomFormTextField.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../logic/login_cubit.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({super.key});

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<LoginCubit>();
    return Form(
      key: cubit.formKey,


        child: Column(
          children: [
            CustomFormTextField(

                hintText: "username", labelText: "username", controller: cubit.userNameController),
            SizedBox(height: 20.h,),
            CustomFormTextField(hintText: "password", labelText: "password", controller: cubit.passwordController),
            SizedBox(height: 20.sp,)
          ],
        ));
  }
}
