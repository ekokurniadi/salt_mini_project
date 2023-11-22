import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:salt_flutter_mini_project/core/auto_route/auto_route.gr.dart';
import 'package:salt_flutter_mini_project/core/models/pagination_request_params.codegen.dart';
import 'package:salt_flutter_mini_project/core/styles/color_name_style.dart';
import 'package:salt_flutter_mini_project/core/styles/text_name_style.dart';
import 'package:salt_flutter_mini_project/core/widgets/box_fit_screen_widget.dart';
import 'package:salt_flutter_mini_project/core/widgets/loading_dialog_widget.dart';
import 'package:salt_flutter_mini_project/core/widgets/space_widget.dart';
import 'package:salt_flutter_mini_project/injector.dart';
import 'package:salt_flutter_mini_project/modules/users/presentations/bloc/users_bloc.dart';
import 'package:salt_flutter_mini_project/modules/users/presentations/widgets/users_card_item.dart';
import 'package:salt_flutter_mini_project/modules/users/presentations/widgets/users_card_item_placeholder.dart';
import 'package:shared_preferences/shared_preferences.dart';

class UsersPage extends StatelessWidget {
  const UsersPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bg300,
      appBar: AppBar(
        elevation: 0.5,
        backgroundColor: AppColors.bg100,
        title: AppTexts.getStyle(
          text: 'Users',
          styleName: TextStyleName.bold,
          typeName: TextTypeName.headline2,
        ),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 16.w),
            child: IconButton(
              onPressed: () async {
                await showDialog(
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                      title: AppTexts.getStyle(
                        text: 'Logout Confirmation',
                        styleName: TextStyleName.bold,
                        typeName: TextTypeName.headline2,
                        color: AppColors.primary500,
                      ),
                      content: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          AppTexts.getStyle(
                            text:
                                'Are you sure to logout from this application?',
                            styleName: TextStyleName.regular,
                            typeName: TextTypeName.headline4,
                          ),
                          const VerticalSpaceWidget(),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              TextButton(
                                onPressed: () async {
                                  Navigator.pop(context);
                                  await getIt<SharedPreferences>().clear();
                                  AutoRouter.of(context)
                                      .replaceAll([const LoginRoute()]);
                                },
                                child: AppTexts.getStyle(
                                  text: 'Yes',
                                  styleName: TextStyleName.semiBold,
                                  typeName: TextTypeName.headline2,
                                  color: AppColors.primary500,
                                ),
                              ),
                              TextButton(
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                                child: AppTexts.getStyle(
                                  text: 'No',
                                  styleName: TextStyleName.semiBold,
                                  typeName: TextTypeName.headline2,
                                  color: AppColors.text500,
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    );
                  },
                );
              },
              icon: const Icon(
                Icons.logout,
                color: AppColors.primary500,
              ),
            ),
          )
        ],
      ),
      body: BoxFitScreenWidget(
        child: BlocProvider(
          create: (context) => getIt<UsersBloc>()
            ..add(
              const UsersEvent.getUsersFromRemote(
                PagingRequestParams(),
              ),
            ),
          child: BlocConsumer<UsersBloc, UsersState>(
            listener: (context, state) {
              if (state.status == UsersBlocStatus.failures) {
                LoadingDialog.show(message: state.message);
              }
            },
            builder: (context, state) {
              final isNeedShowShimmer = state.users.isEmpty &&
                  state.status == UsersBlocStatus.loading;
              return ListView.separated(
                separatorBuilder: (context, index) =>
                    const VerticalSpaceWidget(),
                itemCount: isNeedShowShimmer ? 6 : state.users.length,
                itemBuilder: (context, index) {
                  return isNeedShowShimmer
                      ? const UserCardItemPlaceHolder()
                      : UserCardItem(
                          user: state.users[index],
                        );
                },
              );
            },
          ),
        ),
      ),
    );
  }
}
