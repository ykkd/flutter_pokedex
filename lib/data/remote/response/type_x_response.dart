import 'package:freezed_annotation/freezed_annotation.dart';

part 'type_x_response.g.dart';

@JsonSerializable()
class TypeXResponse {
  String name;

  TypeXResponse(this.name);

  factory TypeXResponse.fromJson(Map<String, dynamic> json) =>
      _$TypeXResponseFromJson(json);

  Map<String, dynamic> toJson() => _$TypeXResponseToJson(this);
}
