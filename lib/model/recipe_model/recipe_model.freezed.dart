// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'recipe_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

RecipeModel _$RecipeModelFromJson(Map<String, dynamic> json) {
  return _RecipeModel.fromJson(json);
}

/// @nodoc
mixin _$RecipeModel {
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'user_id')
  int? get userId => throw _privateConstructorUsedError;
  @JsonKey(name: 'recipe_image')
  String? get recipeImage => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  String? get source => throw _privateConstructorUsedError;
  @JsonKey(name: 'cooking_time')
  String? get cookingTime => throw _privateConstructorUsedError;
  @JsonKey(name: 'total_visitor')
  int? get totalVisitor => throw _privateConstructorUsedError;
  @JsonKey(name: 'recipe_comment')
  List<dynamic>? get recipeComment => throw _privateConstructorUsedError;
  @JsonKey(name: 'recipe_ingredient')
  List<RecipeIngredient>? get recipeIngredient =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RecipeModelCopyWith<RecipeModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RecipeModelCopyWith<$Res> {
  factory $RecipeModelCopyWith(
          RecipeModel value, $Res Function(RecipeModel) then) =
      _$RecipeModelCopyWithImpl<$Res, RecipeModel>;
  @useResult
  $Res call(
      {int? id,
      @JsonKey(name: 'user_id')
          int? userId,
      @JsonKey(name: 'recipe_image')
          String? recipeImage,
      String? title,
      String? description,
      String? source,
      @JsonKey(name: 'cooking_time')
          String? cookingTime,
      @JsonKey(name: 'total_visitor')
          int? totalVisitor,
      @JsonKey(name: 'recipe_comment')
          List<dynamic>? recipeComment,
      @JsonKey(name: 'recipe_ingredient')
          List<RecipeIngredient>? recipeIngredient});
}

/// @nodoc
class _$RecipeModelCopyWithImpl<$Res, $Val extends RecipeModel>
    implements $RecipeModelCopyWith<$Res> {
  _$RecipeModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? userId = freezed,
    Object? recipeImage = freezed,
    Object? title = freezed,
    Object? description = freezed,
    Object? source = freezed,
    Object? cookingTime = freezed,
    Object? totalVisitor = freezed,
    Object? recipeComment = freezed,
    Object? recipeIngredient = freezed,
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
      recipeImage: freezed == recipeImage
          ? _value.recipeImage
          : recipeImage // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      source: freezed == source
          ? _value.source
          : source // ignore: cast_nullable_to_non_nullable
              as String?,
      cookingTime: freezed == cookingTime
          ? _value.cookingTime
          : cookingTime // ignore: cast_nullable_to_non_nullable
              as String?,
      totalVisitor: freezed == totalVisitor
          ? _value.totalVisitor
          : totalVisitor // ignore: cast_nullable_to_non_nullable
              as int?,
      recipeComment: freezed == recipeComment
          ? _value.recipeComment
          : recipeComment // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      recipeIngredient: freezed == recipeIngredient
          ? _value.recipeIngredient
          : recipeIngredient // ignore: cast_nullable_to_non_nullable
              as List<RecipeIngredient>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_RecipeModelCopyWith<$Res>
    implements $RecipeModelCopyWith<$Res> {
  factory _$$_RecipeModelCopyWith(
          _$_RecipeModel value, $Res Function(_$_RecipeModel) then) =
      __$$_RecipeModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      @JsonKey(name: 'user_id')
          int? userId,
      @JsonKey(name: 'recipe_image')
          String? recipeImage,
      String? title,
      String? description,
      String? source,
      @JsonKey(name: 'cooking_time')
          String? cookingTime,
      @JsonKey(name: 'total_visitor')
          int? totalVisitor,
      @JsonKey(name: 'recipe_comment')
          List<dynamic>? recipeComment,
      @JsonKey(name: 'recipe_ingredient')
          List<RecipeIngredient>? recipeIngredient});
}

/// @nodoc
class __$$_RecipeModelCopyWithImpl<$Res>
    extends _$RecipeModelCopyWithImpl<$Res, _$_RecipeModel>
    implements _$$_RecipeModelCopyWith<$Res> {
  __$$_RecipeModelCopyWithImpl(
      _$_RecipeModel _value, $Res Function(_$_RecipeModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? userId = freezed,
    Object? recipeImage = freezed,
    Object? title = freezed,
    Object? description = freezed,
    Object? source = freezed,
    Object? cookingTime = freezed,
    Object? totalVisitor = freezed,
    Object? recipeComment = freezed,
    Object? recipeIngredient = freezed,
  }) {
    return _then(_$_RecipeModel(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int?,
      recipeImage: freezed == recipeImage
          ? _value.recipeImage
          : recipeImage // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      source: freezed == source
          ? _value.source
          : source // ignore: cast_nullable_to_non_nullable
              as String?,
      cookingTime: freezed == cookingTime
          ? _value.cookingTime
          : cookingTime // ignore: cast_nullable_to_non_nullable
              as String?,
      totalVisitor: freezed == totalVisitor
          ? _value.totalVisitor
          : totalVisitor // ignore: cast_nullable_to_non_nullable
              as int?,
      recipeComment: freezed == recipeComment
          ? _value._recipeComment
          : recipeComment // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      recipeIngredient: freezed == recipeIngredient
          ? _value._recipeIngredient
          : recipeIngredient // ignore: cast_nullable_to_non_nullable
              as List<RecipeIngredient>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_RecipeModel implements _RecipeModel {
  _$_RecipeModel(
      {this.id,
      @JsonKey(name: 'user_id')
          this.userId,
      @JsonKey(name: 'recipe_image')
          this.recipeImage,
      this.title,
      this.description,
      this.source,
      @JsonKey(name: 'cooking_time')
          this.cookingTime,
      @JsonKey(name: 'total_visitor')
          this.totalVisitor,
      @JsonKey(name: 'recipe_comment')
          final List<dynamic>? recipeComment,
      @JsonKey(name: 'recipe_ingredient')
          final List<RecipeIngredient>? recipeIngredient})
      : _recipeComment = recipeComment,
        _recipeIngredient = recipeIngredient;

  factory _$_RecipeModel.fromJson(Map<String, dynamic> json) =>
      _$$_RecipeModelFromJson(json);

  @override
  final int? id;
  @override
  @JsonKey(name: 'user_id')
  final int? userId;
  @override
  @JsonKey(name: 'recipe_image')
  final String? recipeImage;
  @override
  final String? title;
  @override
  final String? description;
  @override
  final String? source;
  @override
  @JsonKey(name: 'cooking_time')
  final String? cookingTime;
  @override
  @JsonKey(name: 'total_visitor')
  final int? totalVisitor;
  final List<dynamic>? _recipeComment;
  @override
  @JsonKey(name: 'recipe_comment')
  List<dynamic>? get recipeComment {
    final value = _recipeComment;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<RecipeIngredient>? _recipeIngredient;
  @override
  @JsonKey(name: 'recipe_ingredient')
  List<RecipeIngredient>? get recipeIngredient {
    final value = _recipeIngredient;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'RecipeModel(id: $id, userId: $userId, recipeImage: $recipeImage, title: $title, description: $description, source: $source, cookingTime: $cookingTime, totalVisitor: $totalVisitor, recipeComment: $recipeComment, recipeIngredient: $recipeIngredient)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RecipeModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.recipeImage, recipeImage) ||
                other.recipeImage == recipeImage) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.source, source) || other.source == source) &&
            (identical(other.cookingTime, cookingTime) ||
                other.cookingTime == cookingTime) &&
            (identical(other.totalVisitor, totalVisitor) ||
                other.totalVisitor == totalVisitor) &&
            const DeepCollectionEquality()
                .equals(other._recipeComment, _recipeComment) &&
            const DeepCollectionEquality()
                .equals(other._recipeIngredient, _recipeIngredient));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      userId,
      recipeImage,
      title,
      description,
      source,
      cookingTime,
      totalVisitor,
      const DeepCollectionEquality().hash(_recipeComment),
      const DeepCollectionEquality().hash(_recipeIngredient));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RecipeModelCopyWith<_$_RecipeModel> get copyWith =>
      __$$_RecipeModelCopyWithImpl<_$_RecipeModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RecipeModelToJson(
      this,
    );
  }
}

abstract class _RecipeModel implements RecipeModel {
  factory _RecipeModel(
      {final int? id,
      @JsonKey(name: 'user_id')
          final int? userId,
      @JsonKey(name: 'recipe_image')
          final String? recipeImage,
      final String? title,
      final String? description,
      final String? source,
      @JsonKey(name: 'cooking_time')
          final String? cookingTime,
      @JsonKey(name: 'total_visitor')
          final int? totalVisitor,
      @JsonKey(name: 'recipe_comment')
          final List<dynamic>? recipeComment,
      @JsonKey(name: 'recipe_ingredient')
          final List<RecipeIngredient>? recipeIngredient}) = _$_RecipeModel;

  factory _RecipeModel.fromJson(Map<String, dynamic> json) =
      _$_RecipeModel.fromJson;

  @override
  int? get id;
  @override
  @JsonKey(name: 'user_id')
  int? get userId;
  @override
  @JsonKey(name: 'recipe_image')
  String? get recipeImage;
  @override
  String? get title;
  @override
  String? get description;
  @override
  String? get source;
  @override
  @JsonKey(name: 'cooking_time')
  String? get cookingTime;
  @override
  @JsonKey(name: 'total_visitor')
  int? get totalVisitor;
  @override
  @JsonKey(name: 'recipe_comment')
  List<dynamic>? get recipeComment;
  @override
  @JsonKey(name: 'recipe_ingredient')
  List<RecipeIngredient>? get recipeIngredient;
  @override
  @JsonKey(ignore: true)
  _$$_RecipeModelCopyWith<_$_RecipeModel> get copyWith =>
      throw _privateConstructorUsedError;
}
