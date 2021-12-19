import 'package:freezed_annotation/freezed_annotation.dart';

part 'ability_x_response.g.dart';

@JsonSerializable()
class AbilityXResponse {
  String name;

  AbilityXResponse(this.name);

  factory AbilityXResponse.fromJson(Map<String, dynamic> json) =>
      _$AbilityXResponseFromJson(json);

  Map<String, dynamic> toJson() => _$AbilityXResponseToJson(this);
}
