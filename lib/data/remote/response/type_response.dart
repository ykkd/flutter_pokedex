import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pokedex/data/remote/response/type_x_response.dart';

part 'type_response.g.dart';

@JsonSerializable(explicitToJson: true)
class TypeResponse {
  int slot;
  TypeXResponse type;

  TypeResponse(this.slot, this.type);

  factory TypeResponse.fromJson(Map<String, dynamic> json) =>
      _$TypeResponseFromJson(json);

  Map<String, dynamic> toJson() => _$TypeResponseToJson(this);
}
