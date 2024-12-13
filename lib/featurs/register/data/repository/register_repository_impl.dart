import 'package:ecommerce/core/network/Api_constant.dart';
import 'package:ecommerce/core/network/api_consumer.dart';
import 'package:ecommerce/core/network/api_result.dart';
import 'package:ecommerce/featurs/register/data/models/register_requset_model.dart';
import 'package:ecommerce/featurs/register/data/models/register_response_model.dart';
import 'package:ecommerce/featurs/register/data/repository/register_repository.dart';

class RegisterRepositoryImpl extends RegisterRepository{
  ApiConsumer apiConsumer;
  RegisterRepositoryImpl(this.apiConsumer);
  @override
  Future<ApiResult<RegisterResponseModel>>  registerUser({required RegisterRequestModel registerRequestBody}) async{
    try{
    var data= await apiConsumer.post(ApiConstants.register, registerRequestBody.toJson());
    return ApiResult.success(RegisterResponseModel.fromJson(data));
  }catch(e){
    return ApiResult.error(e.toString());
  }
}}