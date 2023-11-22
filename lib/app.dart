import 'package:salt_flutter_mini_project/core/constant/preference_constant.dart';
import 'package:salt_flutter_mini_project/core/constant/url_constant.dart';
import 'package:salt_flutter_mini_project/core/helpers/dio_helper.dart';
import 'package:salt_flutter_mini_project/injector.dart';
import 'package:shared_preferences/shared_preferences.dart';

class App {
  const App._();

  static Future<void> init() async {
    DioHelper.initialDio(URLConstant.baseURL);
    DioHelper.setDioLogger(URLConstant.baseURL);
    String? token =
        getIt<SharedPreferences>().getString(PreferenceConstant.token);
    DioHelper.setDioHeader(token);
  }
}
