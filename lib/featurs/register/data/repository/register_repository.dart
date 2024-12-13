import 'package:ecommerce/core/network/api_result.dart';
import 'package:ecommerce/featurs/register/data/models/register_response_model.dart';

import '../models/register_requset_model.dart';

abstract class RegisterRepository {
  Future<ApiResult<RegisterResponseModel>> registerUser({required RegisterRequestModel registerRequestBody});

}