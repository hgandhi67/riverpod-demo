// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_provider.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$UserProviderState {
  int get page => throw _privateConstructorUsedError;
  List<Result> get usersList => throw _privateConstructorUsedError;
  bool get loading => throw _privateConstructorUsedError;
  bool get loadError => throw _privateConstructorUsedError;
  bool get loadComplete => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UserProviderStateCopyWith<UserProviderState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserProviderStateCopyWith<$Res> {
  factory $UserProviderStateCopyWith(
          UserProviderState value, $Res Function(UserProviderState) then) =
      _$UserProviderStateCopyWithImpl<$Res, UserProviderState>;
  @useResult
  $Res call(
      {int page,
      List<Result> usersList,
      bool loading,
      bool loadError,
      bool loadComplete});
}

/// @nodoc
class _$UserProviderStateCopyWithImpl<$Res, $Val extends UserProviderState>
    implements $UserProviderStateCopyWith<$Res> {
  _$UserProviderStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? page = null,
    Object? usersList = null,
    Object? loading = null,
    Object? loadError = null,
    Object? loadComplete = null,
  }) {
    return _then(_value.copyWith(
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      usersList: null == usersList
          ? _value.usersList
          : usersList // ignore: cast_nullable_to_non_nullable
              as List<Result>,
      loading: null == loading
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
      loadError: null == loadError
          ? _value.loadError
          : loadError // ignore: cast_nullable_to_non_nullable
              as bool,
      loadComplete: null == loadComplete
          ? _value.loadComplete
          : loadComplete // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserProviderStateImplCopyWith<$Res>
    implements $UserProviderStateCopyWith<$Res> {
  factory _$$UserProviderStateImplCopyWith(_$UserProviderStateImpl value,
          $Res Function(_$UserProviderStateImpl) then) =
      __$$UserProviderStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int page,
      List<Result> usersList,
      bool loading,
      bool loadError,
      bool loadComplete});
}

/// @nodoc
class __$$UserProviderStateImplCopyWithImpl<$Res>
    extends _$UserProviderStateCopyWithImpl<$Res, _$UserProviderStateImpl>
    implements _$$UserProviderStateImplCopyWith<$Res> {
  __$$UserProviderStateImplCopyWithImpl(_$UserProviderStateImpl _value,
      $Res Function(_$UserProviderStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? page = null,
    Object? usersList = null,
    Object? loading = null,
    Object? loadError = null,
    Object? loadComplete = null,
  }) {
    return _then(_$UserProviderStateImpl(
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      usersList: null == usersList
          ? _value._usersList
          : usersList // ignore: cast_nullable_to_non_nullable
              as List<Result>,
      loading: null == loading
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
      loadError: null == loadError
          ? _value.loadError
          : loadError // ignore: cast_nullable_to_non_nullable
              as bool,
      loadComplete: null == loadComplete
          ? _value.loadComplete
          : loadComplete // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$UserProviderStateImpl extends _UserProviderState {
  const _$UserProviderStateImpl(
      {this.page = 1,
      required final List<Result> usersList,
      this.loading = true,
      this.loadError = false,
      this.loadComplete = false})
      : _usersList = usersList,
        super._();

  @override
  @JsonKey()
  final int page;
  final List<Result> _usersList;
  @override
  List<Result> get usersList {
    if (_usersList is EqualUnmodifiableListView) return _usersList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_usersList);
  }

  @override
  @JsonKey()
  final bool loading;
  @override
  @JsonKey()
  final bool loadError;
  @override
  @JsonKey()
  final bool loadComplete;

  @override
  String toString() {
    return 'UserProviderState(page: $page, usersList: $usersList, loading: $loading, loadError: $loadError, loadComplete: $loadComplete)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserProviderStateImpl &&
            (identical(other.page, page) || other.page == page) &&
            const DeepCollectionEquality()
                .equals(other._usersList, _usersList) &&
            (identical(other.loading, loading) || other.loading == loading) &&
            (identical(other.loadError, loadError) ||
                other.loadError == loadError) &&
            (identical(other.loadComplete, loadComplete) ||
                other.loadComplete == loadComplete));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      page,
      const DeepCollectionEquality().hash(_usersList),
      loading,
      loadError,
      loadComplete);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserProviderStateImplCopyWith<_$UserProviderStateImpl> get copyWith =>
      __$$UserProviderStateImplCopyWithImpl<_$UserProviderStateImpl>(
          this, _$identity);
}

abstract class _UserProviderState extends UserProviderState {
  const factory _UserProviderState(
      {final int page,
      required final List<Result> usersList,
      final bool loading,
      final bool loadError,
      final bool loadComplete}) = _$UserProviderStateImpl;
  const _UserProviderState._() : super._();

  @override
  int get page;
  @override
  List<Result> get usersList;
  @override
  bool get loading;
  @override
  bool get loadError;
  @override
  bool get loadComplete;
  @override
  @JsonKey(ignore: true)
  _$$UserProviderStateImplCopyWith<_$UserProviderStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
