
import 'package:smartpay/common/store/store.dart';
import 'package:smartpay/pages/profile/state.dart';
import 'package:get/get.dart';
import 'package:google_sign_in/google_sign_in.dart';

class ProfileController extends GetxController {
  ProfileController();
  final state = ProfileState();

  Future<void> goLogOut() async{
    await GoogleSignIn().signOut();
   await  UserStore.to.onLogout();
  }

}