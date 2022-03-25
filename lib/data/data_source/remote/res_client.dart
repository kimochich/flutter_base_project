import 'package:dio/dio.dart';
import 'package:flutter_temp_project/modules/home_page/models/response/user_response.dart';
import 'package:retrofit/retrofit.dart';


part 'res_client.g.dart';

const int pageSize = 20;

@RestApi(baseUrl: "https://api.github.com")
abstract class RestClient {
  factory RestClient(Dio dio, {String baseUrl}) = _RestClient;

  @GET("/search/users")
  Future<HttpResponse<UserResponse>> getListUser(@Query("q") String name);
}
