import 'package:freezed_annotation/freezed_annotation.dart';

part 'stat_x_response.g.dart';

@JsonSerializable()
class StatXResponse {
  String name;

  StatXResponse(this.name);

  factory StatXResponse.fromJson(Map<String, dynamic> json) =>
      _$StatXResponseFromJson(json);

  Map<String, dynamic> toJson() => _$StatXResponseToJson(this);
}
