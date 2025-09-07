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

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  bool securePassword = true;
  bool secureRePassword = true;
  late TextEditingController _nameController;

  late TextEditingController _emailController;

  late TextEditingController _passwordController;

  late TextEditingController _rePasswordController;
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();
    _nameController = TextEditingController();
    _emailController = TextEditingController();
    _passwordController = TextEditingController();
    _rePasswordController = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(title: Text("Register")),
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 12,
          vertical: MediaQuery.of(context).viewInsets.top,
        ),
        child: SingleChildScrollView(
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Image.asset(
                  ImageAssets.eventlyLogo,
                  width: 131.w,
                  height: 141.h,
                ),
                SizedBox(height: 24.h),
                CustomTextFormField(
                  controller: _nameController,
                  validator: Validator.validateName,
                  label: "Name",
                  prefixIcon: Icons.person_2_rounded,
                ),
                SizedBox(height: 16.h),
                CustomTextFormField(
                  controller: _emailController,
                  validator: Validator.validateEmail,
                  label: "E-mail",
                  prefixIcon: Icons.email,
                  keyboardType: TextInputType.emailAddress,
                ),
                SizedBox(height: 16.h),
                CustomTextFormField(
                  controller: _passwordController,
                  validator: Validator.validatePassword,
                  isSecure: securePassword,
                  label: "Password",
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
                CustomTextFormField(
                  controller: _rePasswordController,
                  validator: Validator.validateRePassword,
                  isSecure: secureRePassword,
                  label: "Re-Password",
                  prefixIcon: Icons.lock,
                  suffixIcon: IconButton(
                    onPressed: _onRePasswordIconClicked,
                    icon: Icon(
                      secureRePassword
                          ? Icons.visibility_off
                          : Icons.visibility,
                    ),
                  ),
                  keyboardType: TextInputType.visiblePassword,
                ),

                SizedBox(height: 16.h),
                CustomElevatedButton(
                  title: "Create Account",
                  onPress: _createAccount,
                ),
                SizedBox(height: 16.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Already Have Account ?",
                      style: Theme.of(context).textTheme.bodySmall,
                    ),
                    CustomTextButton(text: "Login", onTap: () {
                      Navigator.pushReplacementNamed(context, RoutesManager.login);
                    }),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }


  void _onPasswordIconClicked() {
    setState(() {
      securePassword = !securePassword;
    });
  }

  void _onRePasswordIconClicked() {
    setState(() {
      secureRePassword = !secureRePassword;
    });
  }

  void _createAccount() {
    if (_formKey.currentState?.validate() == false) return;

    print("Account created successfully");
  }

  @override
  void dispose() {
    _nameController.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    _rePasswordController.dispose();
    super.dispose();
  }
}
