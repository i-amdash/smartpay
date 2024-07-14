import 'package:flutter/cupertino.dart';
import 'package:smartpay/common/entities/entities.dart';
import 'package:smartpay/common/routes/names.dart';
import 'package:smartpay/common/store/user.dart';
import 'package:smartpay/common/utils/http.dart';
import 'package:smartpay/pages/frame/sign_in/state.dart';
import 'package:flutter/foundation.dart';
import 'package:get/get.dart';
import 'package:google_sign_in/google_sign_in.dart';

class SignInController extends GetxController {
  SignInController();
  final state = SignInState();

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  final GoogleSignIn _googleSignIn = GoogleSignIn(
    scopes: [
      'openid'
    ]
  );

  Future<void> handleSignIn(String type) async {
    try {
      if(type=="phone"){
        if (kDebugMode) {
          print('you are trying to login with phone number');

        }} else if (type=="google") {
        var user = await _googleSignIn.signIn();
        if(user != null) {
          String ? displayName = user.displayName;
          String email = user.email;
          String id = user.id;
          String photoUrl = user.photoUrl ?? 'assets/icons/google.png';
         LoginRequestEntity loginPanelListRequestEntity =  LoginRequestEntity();
          loginPanelListRequestEntity.avatar = photoUrl;
          loginPanelListRequestEntity.name = displayName;
          loginPanelListRequestEntity.email = email;
          loginPanelListRequestEntity.open_id = id;
          loginPanelListRequestEntity.type = 2;
          asyncPostAllData();
        }
        if (kDebugMode) {
          print('you are trying to login with google');
        }
        } else {
          if (kDebugMode) {
            print('not sure');
          }
        }


    } catch(e)  {
      if (kDebugMode) {
        print('... error is here for login $e');
      }
    }
  }
  asyncPostAllData() async{
  var response = await HttpUtil().get('/api/index');
    UserStore.to.setIsLogin = true;
  }
}