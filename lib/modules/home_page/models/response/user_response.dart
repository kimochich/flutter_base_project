import 'package:json_annotation/json_annotation.dart';

part 'user_response.g.dart';

@JsonSerializable()
class UserResponse {
  int? total_count;
  bool? incomplete_results;
  List<ItemsBean>? items;

  UserResponse({this.total_count, this.incomplete_results, this.items});

  factory UserResponse.fromJson(Map<String, dynamic> json) => _$UserResponseFromJson(json);

  Map<String, dynamic> toJson() => _$UserResponseToJson(this);
}

@JsonSerializable()
class ItemsBean {
  String? login;
  int? id;
  String? node_id;
  String? avatar_url;
  String? gravatar_id;
  String? url;
  String? html_url;
  String? followers_url;
  String? following_url;
  String? gists_url;
  String? starred_url;
  String? subscriptions_url;
  String? organizations_url;
  String? repos_url;
  String? events_url;
  String? received_events_url;
  String? type;
  bool? site_admin;
  double? score;

  ItemsBean({this.login, this.id, this.node_id, this.avatar_url, this.gravatar_id, this.url, this.html_url, this.followers_url, this.following_url, this.gists_url, this.starred_url, this.subscriptions_url, this.organizations_url, this.repos_url, this.events_url, this.received_events_url, this.type, this.site_admin, this.score});

  factory ItemsBean.fromJson(Map<String, dynamic> json) => _$ItemsBeanFromJson(json);

  Map<String, dynamic> toJson() => _$ItemsBeanToJson(this);
}

