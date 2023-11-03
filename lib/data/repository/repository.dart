import 'package:basri_s_application22/data/models/login/post_login_resp.dart';
import 'package:basri_s_application22/data/models/register/post_register_resp.dart';

import '../apiClient/api_client.dart';

class Repository {
  var _apiClient = ApiClient();

  Future<PostLoginResp> createLogin({
    Map<String, String> headers = const {},
    Map requestData = const {},
  }) async {
    return await _apiClient.createLogin(
      headers: headers,
      requestData: requestData,
    );
  }

  Future<PostRegisterResp> createRegister({
    Map<String, String> headers = const {},
    Map requestData = const {},
  }) async {
    return await _apiClient.createRegister(
      headers: headers,
      requestData: requestData,
    );
  }
}
