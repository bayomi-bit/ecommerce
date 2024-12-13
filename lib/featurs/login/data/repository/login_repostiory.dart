import 'package:ecommerce/core/network/api_result.dart';

import '../models/login_requset_model.dart';
import '../models/login_respose_model.dart';

abstract class LoginRepository {
  Future<ApiResult<LoginResponseModel>> loginUser(
      {required LoginRequestModel loginRequestBody});
}
