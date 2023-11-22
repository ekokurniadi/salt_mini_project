import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:salt_flutter_mini_project/core/auto_route/auto_route.gr.dart';
import 'package:salt_flutter_mini_project/core/constant/assets_constant.dart';
import 'package:salt_flutter_mini_project/core/helpers/global_helper.dart';
import 'package:salt_flutter_mini_project/core/styles/color_name_style.dart';
import 'package:salt_flutter_mini_project/core/styles/text_name_style.dart';
import 'package:salt_flutter_mini_project/core/widgets/box_fit_screen_widget.dart';
import 'package:salt_flutter_mini_project/core/widgets/custom_text_field.dart';
import 'package:email_validator/email_validator.dart';
import 'package:salt_flutter_mini_project/core/widgets/loading_dialog_widget.dart';
import 'package:salt_flutter_mini_project/core/widgets/space_widget.dart';
import 'package:salt_flutter_mini_project/injector.dart';
import 'package:salt_flutter_mini_project/modules/login/domain/entities/login_entity.codegen.dart';
import 'package:salt_flutter_mini_project/modules/login/presentations/bloc/login_bloc.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey();
  late LoginBloc _loginBloc;

  @override
  void initState() {
    _loginBloc = getIt<LoginBloc>();
    super.initState();
  }

  @override
  void dispose() {
    _loginBloc.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.bg100,
        resizeToAvoidBottomInset: false,
        body: Padding(
          padding: EdgeInsets.only(
            bottom: MediaQuery.of(context).viewInsets.bottom,
          ),
          child: BlocProvider(
            create: (_) => _loginBloc,
            child: BlocListener<LoginBloc, LoginState>(
              listener: (context, state) {
                if (state.status == LoginStatus.loading) {
                  LoadingDialog.show(message: 'Loading ...');
                } else if (state.status == LoginStatus.success) {
                  LoadingDialog.dismiss();
                  LoadingDialog.showSuccess(message: state.message);
                  AutoRouter.of(context).replace(const HomeRoute());
                } else if (state.status == LoginStatus.failures) {
                  LoadingDialog.dismiss();
                  LoadingDialog.showError(message: state.message);
                } else {
                  LoadingDialog.dismiss();
                }
              },
              child: BoxFitScreenWidget(
                child: SingleChildScrollView(
                  child: Form(
                    key: _formKey,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        SizedBox(
                            height: MediaQuery.sizeOf(context).height * 0.10,),
                        Container(
                          alignment: Alignment.centerLeft,
                          width: double.infinity,
                          child: Image.asset(
                            AssetsConstant.pngImageAppLogo,
                            width: 80.w,
                            height: 80.w,
                          ),
                        ),
                        SizedBox(
                          width: double.infinity,
                          child: AppTexts.getStyle(
                            text: 'Welcome Back',
                            styleName: TextStyleName.bold,
                            color: AppColors.text500,
                            typeName: TextTypeName.headline1,
                            textAlign: TextAlign.left,
                          ),
                        ),
                        const VerticalSpaceWidget(),
                        CustomTextField(
                          controller: _emailController,
                          label: 'Email',
                          validator: (val) {
                            if (GlobalHelper.isEmpty(val)) {
                              return 'Please fill out this field';
                            } else if (!EmailValidator.validate(val!)) {
                              return 'Invalid format';
                            }
                            return null;
                          },
                        ),
                        CustomTextField(
                          controller: _passwordController,
                          label: 'Password',
                          isRequired: true,
                          isPassword: true,
                          validator: (val) {
                            if (GlobalHelper.isEmpty(val)) {
                              return 'Please fill out this field';
                            }
                            return null;
                          },
                        ),
                        SizedBox(
                          width: double.infinity,
                          height: 50.h,
                          child: ElevatedButton(
                            onPressed: () {
                              if (!_formKey.currentState!.validate()) {
                                return;
                              }
                              _loginBloc.add(
                                LoginEvent.doLogin(
                                  LoginEntity(
                                    email: _emailController.text,
                                    password: _passwordController.text,
                                  ),
                                ),
                              );
                            },
                            child: AppTexts.getStyle(
                              text: 'Login',
                              color: AppColors.bg100,
                              styleName: TextStyleName.bold,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
