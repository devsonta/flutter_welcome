import 'package:get/get.dart';

class SignUpController extends GetxController {
  var isProficPicPathSet = false.obs;
  var proficPicPath = ''.obs;

  void setProfileImagePath(String path) {
    proficPicPath.value = path;
    isProficPicPathSet.value = true;
  }
}
