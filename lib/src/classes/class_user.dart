import 'package:hive/hive.dart';
import 'package:json_annotation/json_annotation.dart';
part 'class_user.g.dart';

@JsonSerializable()
@HiveType(typeId: 0)
class User {
  @HiveField(0)
  final String name;
  @HiveField(1)
  final String familyName;
  @HiveField(2)
  final String email;

  User({
    required this.name,
    required this.familyName,
    required this.email,
  });

  String get fullName => '$name $familyName';

  String get initials => '${name[0]}${familyName[0]}';

  String get getEmail => email;

  String get getName => name;

  String get getFamilyName => familyName;

  Map<String, dynamic> toJson() => _$UserToJson(this);

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}
