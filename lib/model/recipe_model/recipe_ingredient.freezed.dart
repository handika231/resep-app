// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'recipe_ingredient.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

RecipeIngredient _$RecipeIngredientFromJson(Map<String, dynamic> json) {
  return _RecipeIngredient.fromJson(json);
}

/// @nodoc
mixin _$RecipeIngredient {
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'recipe_id')
  int? get recipeId => throw _privateConstructorUsedError;
  String? get ingredient => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_active')
  int? get isActive => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RecipeIngredientCopyWith<RecipeIngredient> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RecipeIngredientCopyWith<$Res> {
  factory $RecipeIngredientCopyWith(
          RecipeIngredient value, $Res Function(RecipeIngredient) then) =
      _$RecipeIngredientCopyWithImpl<$Res, RecipeIngredient>;
  @useResult
  $Res call(
      {int? id,
      @JsonKey(name: 'recipe_id') int? recipeId,
      String? ingredient,
      @JsonKey(name: 'is_active') int? isActive});
}

/// @nodoc
class _$RecipeIngredientCopyWithImpl<$Res, $Val extends RecipeIngredient>
    implements $RecipeIngredientCopyWith<$Res> {
  _$RecipeIngredientCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? recipeId = freezed,
    Object? ingredient = freezed,
    Object? isActive = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      recipeId: freezed == recipeId
          ? _value.recipeId
          : recipeId // ignore: cast_nullable_to_non_nullable
              as int?,
      ingredient: freezed == ingredient
          ? _value.ingredient
          : ingredient // ignore: cast_nullable_to_non_nullable
              as String?,
      isActive: freezed == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_RecipeIngredientCopyWith<$Res>
    implements $RecipeIngredientCopyWith<$Res> {
  factory _$$_RecipeIngredientCopyWith(
          _$_RecipeIngredient value, $Res Function(_$_RecipeIngredient) then) =
      __$$_RecipeIngredientCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      @JsonKey(name: 'recipe_id') int? recipeId,
      String? ingredient,
      @JsonKey(name: 'is_active') int? isActive});
}

/// @nodoc
class __$$_RecipeIngredientCopyWithImpl<$Res>
    extends _$RecipeIngredientCopyWithImpl<$Res, _$_RecipeIngredient>
    implements _$$_RecipeIngredientCopyWith<$Res> {
  __$$_RecipeIngredientCopyWithImpl(
      _$_RecipeIngredient _value, $Res Function(_$_RecipeIngredient) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? recipeId = freezed,
    Object? ingredient = freezed,
    Object? isActive = freezed,
  }) {
    return _then(_$_RecipeIngredient(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      recipeId: freezed == recipeId
          ? _value.recipeId
          : recipeId // ignore: cast_nullable_to_non_nullable
              as int?,
      ingredient: freezed == ingredient
          ? _value.ingredient
          : ingredient // ignore: cast_nullable_to_non_nullable
              as String?,
      isActive: freezed == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_RecipeIngredient implements _RecipeIngredient {
  _$_RecipeIngredient(
      {this.id,
      @JsonKey(name: 'recipe_id') this.recipeId,
      this.ingredient,
      @JsonKey(name: 'is_active') this.isActive});

  factory _$_RecipeIngredient.fromJson(Map<String, dynamic> json) =>
      _$$_RecipeIngredientFromJson(json);

  @override
  final int? id;
  @override
  @JsonKey(name: 'recipe_id')
  final int? recipeId;
  @override
  final String? ingredient;
  @override
  @JsonKey(name: 'is_active')
  final int? isActive;

  @override
  String toString() {
    return 'RecipeIngredient(id: $id, recipeId: $recipeId, ingredient: $ingredient, isActive: $isActive)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RecipeIngredient &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.recipeId, recipeId) ||
                other.recipeId == recipeId) &&
            (identical(other.ingredient, ingredient) ||
                other.ingredient == ingredient) &&
            (identical(other.isActive, isActive) ||
                other.isActive == isActive));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, recipeId, ingredient, isActive);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RecipeIngredientCopyWith<_$_RecipeIngredient> get copyWith =>
      __$$_RecipeIngredientCopyWithImpl<_$_RecipeIngredient>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RecipeIngredientToJson(
      this,
    );
  }
}

abstract class _RecipeIngredient implements RecipeIngredient {
  factory _RecipeIngredient(
      {final int? id,
      @JsonKey(name: 'recipe_id') final int? recipeId,
      final String? ingredient,
      @JsonKey(name: 'is_active') final int? isActive}) = _$_RecipeIngredient;

  factory _RecipeIngredient.fromJson(Map<String, dynamic> json) =
      _$_RecipeIngredient.fromJson;

  @override
  int? get id;
  @override
  @JsonKey(name: 'recipe_id')
  int? get recipeId;
  @override
  String? get ingredient;
  @override
  @JsonKey(name: 'is_active')
  int? get isActive;
  @override
  @JsonKey(ignore: true)
  _$$_RecipeIngredientCopyWith<_$_RecipeIngredient> get copyWith =>
      throw _privateConstructorUsedError;
}
