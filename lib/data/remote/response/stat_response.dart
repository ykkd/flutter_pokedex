import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pokedex/data/remote/response/stat_x_response.dart';

part 'stat_response.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class StatResponse {
  int baseStat;
  int effort;
  StatXResponse stat;

  StatResponse(this.baseStat, this.effort, this.stat);

  factory StatResponse.fromJson(Map<String, dynamic> json) =>
      _$StatResponseFromJson(json);

  Map<String, dynamic> toJson() => _$StatResponseToJson(this);
}
