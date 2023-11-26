import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class AuthController extends GetxController {
  final storage = GetStorage();
  RxBool isLoggedIn = false.obs;

  @override
  void onInit() {
    // 在初始化时检查存储中是否存在登录状态
    isLoggedIn.value = storage.read('isLoggedIn') ?? false;
    super.onInit();
  }

  void login() {
    // 登录成功后更新状态，并保存到存储
    isLoggedIn.value = true;
    storage.write('isLoggedIn', true);
  }

  void logout() {
    // 注销时更新状态，并保存到存储
    isLoggedIn.value = false;
    storage.write('isLoggedIn', false);
  }
}