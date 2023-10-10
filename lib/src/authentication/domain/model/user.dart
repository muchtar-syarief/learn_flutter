import 'dart:convert';

import 'package:equatable/equatable.dart';

class User extends Equatable {
  final String id;
  final String name;
  final String createdAt;
  final String avatar;

  const User({
    required this.id,
    required this.name,
    required this.avatar,
    required this.createdAt,
  });

  @override
  List<Object?> get props => [id];
}

class UserModel extends User {
  const UserModel({
    required super.id,
    required super.name,
    required super.avatar,
    required super.createdAt,
  });

  UserModel.fromMap(Map<String, dynamic> map)
      : this(
          id: map['id'] as String,
          name: map['name'] as String,
          avatar: map['avatar'] as String,
          createdAt: map['createdAt'] as String,
        );

  UserModel.fromJson(String source)
      : this.fromMap(jsonDecode(source) as Map<String, dynamic>);
    
  Map<String, dynamic> toMap() => {
    'id': id,
    'name': name,
    'avatar': avatar,
    'createdAt': createdAt,
  };

  String toJson() => json.encode(toMap());
}
