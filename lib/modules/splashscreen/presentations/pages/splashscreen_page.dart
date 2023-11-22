import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:salt_flutter_mini_project/core/auto_route/auto_route.gr.dart';
import 'package:salt_flutter_mini_project/core/constant/assets_constant.dart';
import 'package:salt_flutter_mini_project/core/constant/preference_constant.dart';
import 'package:salt_flutter_mini_project/core/helpers/global_helper.dart';
import 'package:salt_flutter_mini_project/core/styles/color_name_style.dart';
import 'package:salt_flutter_mini_project/core/styles/default_style.dart';
import 'package:salt_flutter_mini_project/injector.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SplashScreenPage extends StatefulWidget {
  const SplashScreenPage({super.key});

  @override
  State<SplashScreenPage> createState() => _SplashScreenPageState();
}

class _SplashScreenPageState extends State<SplashScreenPage> {
  Future<void> getSessionUser() async {
    final tokenFromPref = getIt<SharedPreferences>().getString(
      PreferenceConstant.token,
    );

    if (!GlobalHelper.isEmpty(tokenFromPref)) {
      Future.delayed(
        const Duration(seconds: 2),
        () {
          AutoRouter.of(context).replace(const HomeRoute());
        },
      );
    } else {
      Future.delayed(
        const Duration(seconds: 2),
        () {
          AutoRouter.of(context).replace(const LoginRoute());
        },
      );
    }
  }

  @override
  void initState() {
    getSessionUser();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primary500,
      body: SizedBox(
        width: double.infinity,
        height: MediaQuery.sizeOf(context).height,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              padding: defaultPadding,
              decoration: BoxDecoration(
                color: AppColors.bg100,
                borderRadius: defaultRadius,
              ),
              width: 160.w,
              height: 160.w,
              child: Image.asset(
                AssetsConstant.pngImageAppLogo,
                fit: BoxFit.contain,
                width: 160.w,
                height: 160.w,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
