import 'package:ecommerce/core/network/Api_constant.dart';
import 'package:ecommerce/core/network/api_consumer.dart';
import 'package:ecommerce/core/network/api_result.dart';
import 'package:ecommerce/featurs/login/data/models/login_requset_model.dart';
import 'package:ecommerce/featurs/login/data/models/login_respose_model.dart';
import 'package:ecommerce/featurs/login/data/repository/login_repostiory.dart';

class LoginRepositoryImpl implements LoginRepository {
  ApiConsumer apiConsumer;

  LoginRepositoryImpl(this.apiConsumer);

  @override
  Future<ApiResult<LoginResponseModel>> loginUser(
      {required LoginRequestModel loginRequestBody}) async {
    try {
      final data =
          await apiConsumer.post(ApiConstants.login, loginRequestBody.toJson());
      return ApiResult.success(LoginResponseModel.fromJson(data));
    } catch (e) {
      return ApiResult.error(e.toString());
    }
  }
}
