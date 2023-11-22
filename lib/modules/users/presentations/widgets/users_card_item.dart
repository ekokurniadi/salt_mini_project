import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:salt_flutter_mini_project/core/styles/color_name_style.dart';
import 'package:salt_flutter_mini_project/core/styles/default_style.dart';
import 'package:salt_flutter_mini_project/core/styles/text_name_style.dart';
import 'package:salt_flutter_mini_project/core/widgets/custom_cached_image_network.dart';
import 'package:salt_flutter_mini_project/modules/users/domain/entities/users_entity.codegen.dart';

class UserCardItem extends StatelessWidget {
  const UserCardItem({
    super.key,
    required this.user,
  });

  final UsersEntity user;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: defaultPadding,
      decoration: BoxDecoration(
        borderRadius: defaultRadius,
        color: AppColors.bg100,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: 80.w,
            height: 80.w,
            decoration: BoxDecoration(
              borderRadius: defaultRadius,
            ),
            child: ClipRRect(
              borderRadius: defaultRadius,
              child: CustomImageNetwork(
                imageUrl: user.avatar,
                isLoaderShimmer: true,
              ),
            ),
          ),
          SizedBox(width: 16.w),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AppTexts.getStyle(
                text: '${user.firstName} ${user.lastName}',
                color: AppColors.text500,
                typeName: TextTypeName.headline3,
              ),
              AppTexts.getStyle(
                text: user.email,
                color: AppColors.primary500,
                typeName: TextTypeName.headline2,
                styleName: TextStyleName.regular,
              )
            ],
          )
        ],
      ),
    );
  }
}
