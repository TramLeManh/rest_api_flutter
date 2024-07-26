import 'package:json_annotation/json_annotation.dart';
part 'task.g.dart';

@JsonSerializable()
class Task {
  final String? id;
  final String? name;
  final String? avatar;
  final String? createdAt;
  const Task({this.id, this.name, this.avatar, this.createdAt});

  factory Task.fromJson(Map<String, dynamic> json) => _$TaskFromJson(json);
  Map<String, dynamic> toJson() => _$TaskToJson(this);
  
   @override
  String toString() {
    return 'Task{id: $id, name: $name, avatar: $avatar, createdAt: $createdAt}';
  }
}
