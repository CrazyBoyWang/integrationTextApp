import 'dart:io';
import 'package:dio/dio.dart';
import 'package:integrationTextApp/common/base-api-provider.dart';
import 'package:integrationTextApp/common/setclass/proptities.dart';
import 'package:integrationTextApp/common/setclass/proptities.dart';
import 'package:integrationTextApp/configs/network_path_config.dart';
import 'package:integrationTextApp/resource/base_resp.dart';

class CreateClass extends BaseApiProvider {
  Future<BaseResp> ARLogin(Map<String, dynamic> params) async {
    print(params);
    final response = await post(NetworkConfig.SetClass['ARLogin'], params);
    return super.verifyMiddleWare(response);
  }

  Future<BaseResp> AddLesson(Map<String, dynamic> params) async {
    print(params);
    //带token传参
    final response = await post(NetworkConfig.SetClass['AddLesson'], params, {"token": SetClassParameter.token});

    return super.verifyMiddleWare(response);
  }

  Future<BaseResp> IssueLesson(Map<String, dynamic> params) async {
    print(params);
    //带token传参
    final response = await post(NetworkConfig.SetClass['IssueLesson'], params, {"token": SetClassParameter.token});

    return super.verifyMiddleWare(response);
  }

  Future<BaseResp> SetUpCourses(Map<String, dynamic> params) async {
    print(params);
    //带token传参
    final response = await post(NetworkConfig.SetClass['SetUpCourses'], params);

    return super.verifyMiddleWare(response);
  }

  Future<BaseResp> IssueCourses(Map<String, dynamic> params) async {
    print(params);
    //带token传参
    final response = await post(NetworkConfig.SetClass['IssueCourses'], params);

    return super.verifyMiddleWare(response);
  }

  Future<BaseResp> NewMould(Map<String, dynamic> params) async {
    print(params);
    //带token传参
    final response = await post(NetworkConfig.SetClass['NewMould'], params, {"token": SetClassParameter.token});

    return super.verifyMiddleWare(response);
  }

  Future<BaseResp> GroundClass(formData) async {
    //   FormData formData = FormData.fromMap({"ids":classId});

    //  print(formData);
    //带token传参
    final response = await post(NetworkConfig.SetClass['GroundClass'], formData, {"token": SetClassParameter.token});
    //{"token": SetClassParameter.token,"Content-Type":"multipart/form-data"}
    print(response);
    return super.verifyMiddleWare(response);
  }

  Future<BaseResp> CreateOrder(params) async {
    final response = await post(NetworkConfig.SetClass['CreateOrder'], params, {"token": SetClassParameter.token});
    return super.verifyMiddleWare(response);
  }










// Future<BaseResp> issueMould(Map<String, dynamic> params) async {
//   print(params);
//   //带token传参
//   final response = await post(NetworkConfig.SetClass['issueMould'], params,{"token": SetClassParameter.token});
//
//   return super.verifyMiddleWare(response);
// }

}
