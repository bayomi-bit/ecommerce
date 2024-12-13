import 'package:ecommerce/core/route/approuter.dart';
import 'package:ecommerce/featurs/login/ui/widget/login_button.dart';
import 'package:ecommerce/featurs/login/ui/widget/login_form.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Padding(
        padding:  EdgeInsets.all(8.0.sp),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text("Welcome back"),
            SizedBox(height: 20.h,),
             LoginForm(),
            LoginButton(),
            Row(
              children: [
                Text("Don't have an account yet?"),
                TextButton(onPressed: (){
                  context.go(ConstantRouter.registerpath);
                }, child: Text("Register"))
              ],
            )
          ],
        ),
      ),
    );
  }
}
