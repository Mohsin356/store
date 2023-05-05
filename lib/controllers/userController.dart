
import 'package:get/get.dart';
import 'package:store/models/user.dart';

class UserController extends GetxController {
  final user = User(userName: ' ', password: ' ',email: ' ').obs;
  final Rxn<int> selected = Rxn<int>();
  final RxBool hiddenPass=true.obs;

  void setName(String name) {
    user.update((val) {
      val!.userName = name;
    });
  }
  void setEmail(String email) {
    user.update((val) {
      val!.email = email;
    });
  }

  void setPass(String pass) {
    user.update((val) {
      val!.password = pass;
    });
  }

  void saveUser() {
    // code to save the user data goes here
  }
  void togglePassword(){
    hiddenPass.value=!hiddenPass.value;
  }
}