// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'bookmarked.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Bookmarked _$BookmarkedFromJson(Map<String, dynamic> json) {
  return _Bookmarked.fromJson(json);
}

/// @nodoc
mixin _$Bookmarked {
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'user_id')
  int? get userId => throw _privateConstructorUsedError;
  @JsonKey(name: 'recipe_id')
  int? get recipeId => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_active')
  int? get isActive => throw _privateConstructorUsedError;
  User? get user => throw _privateConstructorUsedError;
  RecipeModel? get recipe => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BookmarkedCopyWith<Bookmarked> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BookmarkedCopyWith<$Res> {
  factory $BookmarkedCopyWith(
          Bookmarked value, $Res Function(Bookmarked) then) =
      _$BookmarkedCopyWithImpl<$Res, Bookmarked>;
  @useResult
  $Res call(
      {int? id,
      @JsonKey(name: 'user_id') int? userId,
      @JsonKey(name: 'recipe_id') int? recipeId,
      @JsonKey(name: 'is_active') int? isActive,
      User? user,
      RecipeModel? recipe});

  $UserCopyWith<$Res>? get user;
  $RecipeModelCopyWith<$Res>? get recipe;
}

/// @nodoc
class _$BookmarkedCopyWithImpl<$Res, $Val extends Bookmarked>
    implements $BookmarkedCopyWith<$Res> {
  _$BookmarkedCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? userId = freezed,
    Object? recipeId = freezed,
    Object? isActive = freezed,
    Object? user = freezed,
    Object? recipe = freezed,
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
      recipeId: freezed == recipeId
          ? _value.recipeId
          : recipeId // ignore: cast_nullable_to_non_nullable
              as int?,
      isActive: freezed == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as int?,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User?,
      recipe: freezed == recipe
          ? _value.recipe
          : recipe // ignore: cast_nullable_to_non_nullable
              as RecipeModel?,
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
  $RecipeModelCopyWith<$Res>? get recipe {
    if (_value.recipe == null) {
      return null;
    }

    return $RecipeModelCopyWith<$Res>(_value.recipe!, (value) {
      return _then(_value.copyWith(recipe: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_BookmarkedCopyWith<$Res>
    implements $BookmarkedCopyWith<$Res> {
  factory _$$_BookmarkedCopyWith(
          _$_Bookmarked value, $Res Function(_$_Bookmarked) then) =
      __$$_BookmarkedCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      @JsonKey(name: 'user_id') int? userId,
      @JsonKey(name: 'recipe_id') int? recipeId,
      @JsonKey(name: 'is_active') int? isActive,
      User? user,
      RecipeModel? recipe});

  @override
  $UserCopyWith<$Res>? get user;
  @override
  $RecipeModelCopyWith<$Res>? get recipe;
}

/// @nodoc
class __$$_BookmarkedCopyWithImpl<$Res>
    extends _$BookmarkedCopyWithImpl<$Res, _$_Bookmarked>
    implements _$$_BookmarkedCopyWith<$Res> {
  __$$_BookmarkedCopyWithImpl(
      _$_Bookmarked _value, $Res Function(_$_Bookmarked) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? userId = freezed,
    Object? recipeId = freezed,
    Object? isActive = freezed,
    Object? user = freezed,
    Object? recipe = freezed,
  }) {
    return _then(_$_Bookmarked(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int?,
      recipeId: freezed == recipeId
          ? _value.recipeId
          : recipeId // ignore: cast_nullable_to_non_nullable
              as int?,
      isActive: freezed == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as int?,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User?,
      recipe: freezed == recipe
          ? _value.recipe
          : recipe // ignore: cast_nullable_to_non_nullable
              as RecipeModel?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Bookmarked implements _Bookmarked {
  _$_Bookmarked(
      {this.id,
      @JsonKey(name: 'user_id') this.userId,
      @JsonKey(name: 'recipe_id') this.recipeId,
      @JsonKey(name: 'is_active') this.isActive,
      this.user,
      this.recipe});

  factory _$_Bookmarked.fromJson(Map<String, dynamic> json) =>
      _$$_BookmarkedFromJson(json);

  @override
  final int? id;
  @override
  @JsonKey(name: 'user_id')
  final int? userId;
  @override
  @JsonKey(name: 'recipe_id')
  final int? recipeId;
  @override
  @JsonKey(name: 'is_active')
  final int? isActive;
  @override
  final User? user;
  @override
  final RecipeModel? recipe;

  @override
  String toString() {
    return 'Bookmarked(id: $id, userId: $userId, recipeId: $recipeId, isActive: $isActive, user: $user, recipe: $recipe)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Bookmarked &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.recipeId, recipeId) ||
                other.recipeId == recipeId) &&
            (identical(other.isActive, isActive) ||
                other.isActive == isActive) &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.recipe, recipe) || other.recipe == recipe));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, userId, recipeId, isActive, user, recipe);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_BookmarkedCopyWith<_$_Bookmarked> get copyWith =>
      __$$_BookmarkedCopyWithImpl<_$_Bookmarked>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_BookmarkedToJson(
      this,
    );
  }
}

abstract class _Bookmarked implements Bookmarked {
  factory _Bookmarked(
      {final int? id,
      @JsonKey(name: 'user_id') final int? userId,
      @JsonKey(name: 'recipe_id') final int? recipeId,
      @JsonKey(name: 'is_active') final int? isActive,
      final User? user,
      final RecipeModel? recipe}) = _$_Bookmarked;

  factory _Bookmarked.fromJson(Map<String, dynamic> json) =
      _$_Bookmarked.fromJson;

  @override
  int? get id;
  @override
  @JsonKey(name: 'user_id')
  int? get userId;
  @override
  @JsonKey(name: 'recipe_id')
  int? get recipeId;
  @override
  @JsonKey(name: 'is_active')
  int? get isActive;
  @override
  User? get user;
  @override
  RecipeModel? get recipe;
  @override
  @JsonKey(ignore: true)
  _$$_BookmarkedCopyWith<_$_Bookmarked> get copyWith =>
      throw _privateConstructorUsedError;
}
