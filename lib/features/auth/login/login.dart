import 'package:evently_offline_sun/core/resources/assets_manager.dart';
import 'package:evently_offline_sun/core/resources/colors_manager.dart';
import 'package:evently_offline_sun/core/resources/validator.dart';
import 'package:evently_offline_sun/core/routes_manager/routes_manager.dart';
import 'package:evently_offline_sun/core/widgets/custom_elevated-button.dart';
import 'package:evently_offline_sun/core/widgets/custom_text_button.dart';
import 'package:evently_offline_sun/core/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';


class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  late TextEditingController _emailController;
  late TextEditingController _passwordController;
  bool securePassword = true;
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _emailController = TextEditingController();
    _passwordController = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Image.asset(ImageAssets.eventlyLogo, width: 136.w, height: 186.h),
              SizedBox(height: 24.h),
              CustomTextFormField(
                label: "E-mail",
                validator: Validator.validateEmail,
                controller: _emailController,
                prefixIcon: Icons.email,
                keyboardType: TextInputType.emailAddress,
              ),
              SizedBox(height: 16.h),
              CustomTextFormField(
                isSecure: securePassword,
                label: "Password",
                validator: Validator.validatePassword,
                controller: _passwordController,
                prefixIcon: Icons.lock,
                suffixIcon: IconButton(
                  onPressed: _onPasswordIconClicked,
                  icon: Icon(
                    securePassword ? Icons.visibility_off : Icons.visibility,
                  ),
                ),
                keyboardType: TextInputType.visiblePassword,
              ),
              SizedBox(height: 16.h),

              CustomTextButton(
                text: "Forget Password",
                textAlign: TextAlign.right,
                onTap: () {},
              ),
              SizedBox(height: 24.h),
              CustomElevatedButton(title: "Login", onPress:_login)
              ,SizedBox(height: 24.h,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Don't Have Account? ",
                    style: Theme.of(context).textTheme.bodySmall,
                  ),
                  CustomTextButton(text: "Create Account", onTap: () {
                    Navigator.pushReplacementNamed(context, RoutesManager.register);
                  }),



                ],
              ),
              SizedBox(height: 24,),
              Row(
                children: [
                  Expanded(child: Divider(thickness: 1, color: ColorsManager.blue,indent: 14,endIndent: 14,)),
                  Text("Or", style: GoogleFonts.inter(fontSize: 16.sp, fontWeight: FontWeight.w500, color: ColorsManager.blue),),
                  Expanded(child: Divider(thickness: 1, color: ColorsManager.blue,indent: 14,endIndent: 14,)),


                ],
              ),
              SizedBox(height: 24,),
              OutlinedButton(
                  style: OutlinedButton.styleFrom(
                    padding: REdgeInsets.symmetric(vertical: 16),
                    side: BorderSide(color: ColorsManager.blue, width: 2)
                  ,shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14))
                  ),
                  onPressed: (){}, child:Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(ImageAssets.googleIcon),
                  SizedBox(width: 2,),
                  Text("Login With Google", style: GoogleFonts.inter(fontSize:20.sp, fontWeight: FontWeight.w500, color: ColorsManager.blue),)
                ],
              ) )

            ],
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  void _onPasswordIconClicked() {
    setState(() {
      securePassword = !securePassword;
    });
  }

  void _login() {
    if(_formKey.currentState?.validate() == false)return;
  }
}
