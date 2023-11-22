import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:salt_flutter_mini_project/core/styles/color_name_style.dart';
import 'package:salt_flutter_mini_project/core/styles/default_style.dart';
import 'package:shimmer/shimmer.dart';

class UserCardItemPlaceHolder extends StatelessWidget {
  const UserCardItemPlaceHolder({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120.h,
      width: double.infinity,
      padding: defaultPadding,
      decoration: BoxDecoration(
        borderRadius: defaultRadius,
        color: AppColors.bg100,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Shimmer(
            gradient: const LinearGradient(
              colors: [
                AppColors.neutral200,
                AppColors.neutral100,
              ],
            ),
            child: Container(
              width: 80.w,
              height: 80.w,
              decoration: BoxDecoration(
                borderRadius: defaultRadius,
                color: AppColors.bg100,
              ),
            ),
          ),
          SizedBox(width: 16.w),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Shimmer(
                child: Container(
                  width: 120.w,
                  height: 15.h,
                  decoration: BoxDecoration(
                    borderRadius: defaultRadius,
                    color: AppColors.bg100,
                  ),
                ),
                gradient: const LinearGradient(
                  colors: [
                    AppColors.neutral200,
                    AppColors.neutral100,
                  ],
                ),
              ),
              SizedBox(height: 16.w),
              Shimmer(
                child: Container(
                  width: 90.w,
                  height: 15.h,
                  decoration: BoxDecoration(
                    borderRadius: defaultRadius,
                    color: AppColors.bg100,
                  ),
                ),
                gradient: const LinearGradient(
                  colors: [
                    AppColors.neutral200,
                    AppColors.neutral100,
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
