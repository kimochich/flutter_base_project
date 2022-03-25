import 'package:flutter_temp_project/data/data_source/remote/res_client.dart';
import 'package:flutter_temp_project/modules/home_page/models/response/user_response.dart';
import 'package:retrofit/dio.dart';


class UserRepository{
  RestClient apiClient;
  UserRepository(this.apiClient);

  Future<HttpResponse<UserResponse>> getListUser(String name) {
    return apiClient.getListUser(name);
  }

}
