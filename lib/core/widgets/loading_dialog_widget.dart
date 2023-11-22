import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:salt_flutter_mini_project/core/styles/color_name_style.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';

class LoadingDialog {
  const LoadingDialog._();

  static void show({String message = ''}) {
    EasyLoading.show(
      indicator: LoadingAnimationWidget.waveDots(
        color: AppColors.primary500,
        size: 38.w,
      ),
      status: message,
      maskType: EasyLoadingMaskType.black,
    );
  }

  static void showError({String message = ''}) {
    EasyLoading.showError(
      message,
      duration: const Duration(seconds: 2),
      maskType: EasyLoadingMaskType.black,
    );
  }

  static void showSuccess({String message = ''}) {
    EasyLoading.showSuccess(
      message,
      duration: const Duration(seconds: 2),
      maskType: EasyLoadingMaskType.black,
    );
  }

  static void dismiss() {
    EasyLoading.dismiss();
  }
}
