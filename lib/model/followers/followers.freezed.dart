// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'followers.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Followers _$FollowersFromJson(Map<String, dynamic> json) {
  return _Followers.fromJson(json);
}

/// @nodoc
mixin _$Followers {
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'user_id')
  int? get userId => throw _privateConstructorUsedError;
  @JsonKey(name: 'followed_user_id')
  int? get followedUserId => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_active')
  int? get isActive => throw _privateConstructorUsedError;
  User? get user => throw _privateConstructorUsedError;
  @JsonKey(name: 'followed_user')
  FollowedUser? get followedUser => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FollowersCopyWith<Followers> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FollowersCopyWith<$Res> {
  factory $FollowersCopyWith(Followers value, $Res Function(Followers) then) =
      _$FollowersCopyWithImpl<$Res, Followers>;
  @useResult
  $Res call(
      {int? id,
      @JsonKey(name: 'user_id') int? userId,
      @JsonKey(name: 'followed_user_id') int? followedUserId,
      @JsonKey(name: 'is_active') int? isActive,
      User? user,
      @JsonKey(name: 'followed_user') FollowedUser? followedUser});

  $UserCopyWith<$Res>? get user;
  $FollowedUserCopyWith<$Res>? get followedUser;
}

/// @nodoc
class _$FollowersCopyWithImpl<$Res, $Val extends Followers>
    implements $FollowersCopyWith<$Res> {
  _$FollowersCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? userId = freezed,
    Object? followedUserId = freezed,
    Object? isActive = freezed,
    Object? user = freezed,
    Object? followedUser = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int?,
      followedUserId: freezed == followedUserId
          ? _value.followedUserId
          : followedUserId // ignore: cast_nullable_to_non_nullable
              as int?,
      isActive: freezed == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as int?,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User?,
      followedUser: freezed == followedUser
          ? _value.followedUser
          : followedUser // ignore: cast_nullable_to_non_nullable
              as FollowedUser?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $UserCopyWith<$Res>? get user {
    if (_value.user == null) {
      return null;
    }

    return $UserCopyWith<$Res>(_value.user!, (value) {
      return _then(_value.copyWith(user: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $FollowedUserCopyWith<$Res>? get followedUser {
    if (_value.followedUser == null) {
      return null;
    }

    return $FollowedUserCopyWith<$Res>(_value.followedUser!, (value) {
      return _then(_value.copyWith(followedUser: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_FollowersCopyWith<$Res> implements $FollowersCopyWith<$Res> {
  factory _$$_FollowersCopyWith(
          _$_Followers value, $Res Function(_$_Followers) then) =
      __$$_FollowersCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      @JsonKey(name: 'user_id') int? userId,
      @JsonKey(name: 'followed_user_id') int? followedUserId,
      @JsonKey(name: 'is_active') int? isActive,
      User? user,
      @JsonKey(name: 'followed_user') FollowedUser? followedUser});

  @override
  $UserCopyWith<$Res>? get user;
  @override
  $FollowedUserCopyWith<$Res>? get followedUser;
}

/// @nodoc
class __$$_FollowersCopyWithImpl<$Res>
    extends _$FollowersCopyWithImpl<$Res, _$_Followers>
    implements _$$_FollowersCopyWith<$Res> {
  __$$_FollowersCopyWithImpl(
      _$_Followers _value, $Res Function(_$_Followers) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? userId = freezed,
    Object? followedUserId = freezed,
    Object? isActive = freezed,
    Object? user = freezed,
    Object? followedUser = freezed,
  }) {
    return _then(_$_Followers(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int?,
      followedUserId: freezed == followedUserId
          ? _value.followedUserId
          : followedUserId // ignore: cast_nullable_to_non_nullable
              as int?,
      isActive: freezed == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as int?,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User?,
      followedUser: freezed == followedUser
          ? _value.followedUser
          : followedUser // ignore: cast_nullable_to_non_nullable
              as FollowedUser?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Followers implements _Followers {
  _$_Followers(
      {this.id,
      @JsonKey(name: 'user_id') this.userId,
      @JsonKey(name: 'followed_user_id') this.followedUserId,
      @JsonKey(name: 'is_active') this.isActive,
      this.user,
      @JsonKey(name: 'followed_user') this.followedUser});

  factory _$_Followers.fromJson(Map<String, dynamic> json) =>
      _$$_FollowersFromJson(json);

  @override
  final int? id;
  @override
  @JsonKey(name: 'user_id')
  final int? userId;
  @override
  @JsonKey(name: 'followed_user_id')
  final int? followedUserId;
  @override
  @JsonKey(name: 'is_active')
  final int? isActive;
  @override
  final User? user;
  @override
  @JsonKey(name: 'followed_user')
  final FollowedUser? followedUser;

  @override
  String toString() {
    return 'Followers(id: $id, userId: $userId, followedUserId: $followedUserId, isActive: $isActive, user: $user, followedUser: $followedUser)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Followers &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.followedUserId, followedUserId) ||
                other.followedUserId == followedUserId) &&
            (identical(other.isActive, isActive) ||
                other.isActive == isActive) &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.followedUser, followedUser) ||
                other.followedUser == followedUser));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, userId, followedUserId, isActive, user, followedUser);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FollowersCopyWith<_$_Followers> get copyWith =>
      __$$_FollowersCopyWithImpl<_$_Followers>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_FollowersToJson(
      this,
    );
  }
}

abstract class _Followers implements Followers {
  factory _Followers(
          {final int? id,
          @JsonKey(name: 'user_id') final int? userId,
          @JsonKey(name: 'followed_user_id') final int? followedUserId,
          @JsonKey(name: 'is_active') final int? isActive,
          final User? user,
          @JsonKey(name: 'followed_user') final FollowedUser? followedUser}) =
      _$_Followers;

  factory _Followers.fromJson(Map<String, dynamic> json) =
      _$_Followers.fromJson;

  @override
  int? get id;
  @override
  @JsonKey(name: 'user_id')
  int? get userId;
  @override
  @JsonKey(name: 'followed_user_id')
  int? get followedUserId;
  @override
  @JsonKey(name: 'is_active')
  int? get isActive;
  @override
  User? get user;
  @override
  @JsonKey(name: 'followed_user')
  FollowedUser? get followedUser;
  @override
  @JsonKey(ignore: true)
  _$$_FollowersCopyWith<_$_Followers> get copyWith =>
      throw _privateConstructorUsedError;
}
