import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:salt_flutter_mini_project/core/constant/assets_constant.dart';
import 'package:salt_flutter_mini_project/core/styles/color_name_style.dart';
import 'package:salt_flutter_mini_project/modules/users/presentations/pages/users_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late PageController _pageController;
  final ValueNotifier<int> selectedIndex = ValueNotifier(0);

  @override
  void initState() {
    _pageController = PageController(initialPage: selectedIndex.value);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _pageController,
        onPageChanged: (index) {
          selectedIndex.value = index;
        },
        children: [
          const UsersPage(),
          ...List.generate(
            4,
            (i) => Center(child: Text('Page $i')),
          ).toList(),
        ],
      ),
      bottomNavigationBar: ValueListenableBuilder(
        valueListenable: selectedIndex,
        builder: (context, selected, _) {
          return BottomNavigationBar(
            showSelectedLabels: false,
            onTap: (index) {
              selectedIndex.value = index;
              _pageController.jumpToPage(index);
            },
            items: [
              BottomNavigationBarItem(
                label: 'Home',
                icon: SvgPicture.asset(
                  AssetsConstant.svgAssetsIconHome,
                  color: selectedIndex.value == 0
                      ? AppColors.primary500
                      : AppColors.neutral500,
                ),
              ),
              BottomNavigationBarItem(
                label: 'Favorite',
                icon: SvgPicture.asset(
                  AssetsConstant.svgAssetsIconFavorite,
                  color: selectedIndex.value == 1
                      ? AppColors.primary500
                      : AppColors.neutral500,
                ),
              ),
              BottomNavigationBarItem(
                label: 'Task',
                icon: SvgPicture.asset(
                  AssetsConstant.svgAssetsIconTask,
                  color: selectedIndex.value == 2
                      ? AppColors.primary500
                      : AppColors.neutral500,
                ),
              ),
              BottomNavigationBarItem(
                label: 'Catalog',
                icon: SvgPicture.asset(
                  AssetsConstant.svgAssetsIconCatalog,
                  color: selectedIndex.value == 3
                      ? AppColors.primary500
                      : AppColors.neutral500,
                ),
              ),
              BottomNavigationBarItem(
                label: 'Settings',
                icon: SvgPicture.asset(
                  AssetsConstant.svgAssetsIconSettingOff,
                  color: selectedIndex.value == 4
                      ? AppColors.primary500
                      : AppColors.neutral500,
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
