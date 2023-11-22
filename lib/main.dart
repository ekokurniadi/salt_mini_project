// ignore_for_file: require_trailing_commas

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:injectable/injectable.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:salt_flutter_mini_project/app.dart';
import 'package:salt_flutter_mini_project/core/auto_route/auto_route.gr.dart';
import 'package:salt_flutter_mini_project/core/logger/bloc_event_logger.dart';
import 'package:salt_flutter_mini_project/core/styles/color_name_style.dart';
import 'package:salt_flutter_mini_project/core/widgets/loading_dialog_widget.dart';
import 'package:salt_flutter_mini_project/injector.dart';
import 'package:salt_flutter_mini_project/modules/connectivity/presentations/bloc/connectivity_bloc.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await configureDependencies(environment: Environment.dev);
  await App.init();

  Bloc.observer = BlocEventLogger();
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
    ),
  );

  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final _appRouter = AppRouter();

  @override
  void dispose() {
    getIt<ConnectivityBloc>().close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<ConnectivityBloc>(),
      child: BlocListener<ConnectivityBloc, ConnectivityState>(
        listener: (context, state) {
          if (!state.internetConnectionStatus) {
            LoadingDialog.showError(
              message: 'Device Not Connected to the internet',
            );
          }
        },
        child: ScreenUtilInit(
          designSize: Size(
            MediaQuery.sizeOf(context).width,
            MediaQuery.sizeOf(context).height,
          ),
          builder: (context, child) {
            double scale = 126 / MediaQuery.of(context).size.shortestSide;
            return MaterialApp.router(
              builder: EasyLoading.init(
                builder: (context, widget) => ResponsiveWrapper.builder(
                  ClampingScrollWrapper(child: widget!),
                  defaultScale: true,
                  background: const ColoredBox(
                    color: Color(0xFFF5F5F5),
                  ),
                  breakpoints: [
                    ResponsiveBreakpoint.autoScale(
                      480,
                      name: MOBILE,
                      scaleFactor: scale,
                    ),
                    ResponsiveBreakpoint.autoScale(450,
                        name: MOBILE, scaleFactor: scale),
                    const ResponsiveBreakpoint.autoScale(600),
                    const ResponsiveBreakpoint.autoScale(
                      800,
                      name: TABLET,
                    ),
                    const ResponsiveBreakpoint.autoScale(1000, name: TABLET),
                    const ResponsiveBreakpoint.autoScale(1200, name: DESKTOP),
                    const ResponsiveBreakpoint.autoScale(2460, name: '4K'),
                  ],
                ),
              ),
              routerDelegate: _appRouter.delegate(
                navigatorObservers: () => [AutoRouteObserver()],
              ),
              routeInformationParser: _appRouter.defaultRouteParser(),
              theme: ThemeData(
                pageTransitionsTheme: const PageTransitionsTheme(
                  builders: {
                    TargetPlatform.android: CupertinoPageTransitionsBuilder(),
                    TargetPlatform.iOS: CupertinoPageTransitionsBuilder(),
                  },
                ),
                shadowColor: AppColors.neutral100,
                fontFamily: 'PlusJakartaSans',
                textButtonTheme: TextButtonThemeData(
                  style: TextButton.styleFrom(
                    foregroundColor: AppColors.primary500,
                    textStyle: TextStyle(
                      fontSize: 14.w,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                radioTheme: const RadioThemeData(
                  fillColor: MaterialStatePropertyAll(AppColors.primary500),
                ),
                checkboxTheme: const CheckboxThemeData(
                  fillColor: MaterialStatePropertyAll(AppColors.primary500),
                ),
                datePickerTheme: DatePickerThemeData(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.r),
                  ),
                  headerBackgroundColor: AppColors.primary500,
                ),
                dropdownMenuTheme: DropdownMenuThemeData(
                  inputDecorationTheme: InputDecorationTheme(
                    labelStyle: TextStyle(
                      color: AppColors.text500,
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w400,
                    ),
                    hintStyle: TextStyle(
                      fontSize: 14.w,
                      fontWeight: FontWeight.w400,
                      color: AppColors.text500,
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8.r),
                      borderSide: const BorderSide(
                        color: AppColors.neutral100,
                      ),
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8.r),
                      borderSide: const BorderSide(
                        color: AppColors.neutral100,
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8.r),
                      borderSide: const BorderSide(
                        color: AppColors.neutral100,
                      ),
                    ),
                    disabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8.r),
                      borderSide: const BorderSide(
                        color: AppColors.neutral100,
                      ),
                    ),
                  ),
                ),
                inputDecorationTheme: InputDecorationTheme(
                  labelStyle: TextStyle(
                    color: AppColors.text500,
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w400,
                  ),
                  hintStyle: TextStyle(
                    fontSize: 14.w,
                    fontWeight: FontWeight.w400,
                    color: AppColors.text500,
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8.r),
                    borderSide: const BorderSide(
                      color: AppColors.neutral100,
                    ),
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8.r),
                    borderSide: const BorderSide(
                      color: AppColors.neutral100,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8.r),
                    borderSide: const BorderSide(
                      color: AppColors.neutral100,
                    ),
                  ),
                ),
                elevatedButtonTheme: ElevatedButtonThemeData(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: AppColors.primary500,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(4.r),
                    ),
                    fixedSize: Size(double.infinity, 36.h),
                    padding: EdgeInsets.all(8.w),
                  ),
                ),
                highlightColor: Colors.transparent,
                appBarTheme: const AppBarTheme(
                  iconTheme: IconThemeData(color: AppColors.text500),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
