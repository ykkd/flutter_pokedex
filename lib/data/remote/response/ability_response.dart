import 'package:freezed_annotation/freezed_annotation.dart';

import 'ability_x_response.dart';

part 'ability_response.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class AbilityResponse {
  AbilityXResponse ability;
  bool isHidden;
  int slot;

  AbilityResponse(this.ability, this.isHidden, this.slot);

  factory AbilityResponse.fromJson(Map<String, dynamic> json) =>
      _$AbilityResponseFromJson(json);

  Map<String, dynamic> toJson() => _$AbilityResponseToJson(this);
}
