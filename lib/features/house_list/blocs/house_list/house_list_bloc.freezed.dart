// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'house_list_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$HouseListEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetch,
    required TResult Function() fetchNextPage,
    required TResult Function() refresh,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? fetch,
    TResult Function()? fetchNextPage,
    TResult Function()? refresh,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetch,
    TResult Function()? fetchNextPage,
    TResult Function()? refresh,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HouseListFetch value) fetch,
    required TResult Function(HouseListFetchNextPage value) fetchNextPage,
    required TResult Function(HouseListRefresh value) refresh,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(HouseListFetch value)? fetch,
    TResult Function(HouseListFetchNextPage value)? fetchNextPage,
    TResult Function(HouseListRefresh value)? refresh,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HouseListFetch value)? fetch,
    TResult Function(HouseListFetchNextPage value)? fetchNextPage,
    TResult Function(HouseListRefresh value)? refresh,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HouseListEventCopyWith<$Res> {
  factory $HouseListEventCopyWith(
          HouseListEvent value, $Res Function(HouseListEvent) then) =
      _$HouseListEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$HouseListEventCopyWithImpl<$Res>
    implements $HouseListEventCopyWith<$Res> {
  _$HouseListEventCopyWithImpl(this._value, this._then);

  final HouseListEvent _value;
  // ignore: unused_field
  final $Res Function(HouseListEvent) _then;
}

/// @nodoc
abstract class _$$HouseListFetchCopyWith<$Res> {
  factory _$$HouseListFetchCopyWith(
          _$HouseListFetch value, $Res Function(_$HouseListFetch) then) =
      __$$HouseListFetchCopyWithImpl<$Res>;
}

/// @nodoc
class __$$HouseListFetchCopyWithImpl<$Res>
    extends _$HouseListEventCopyWithImpl<$Res>
    implements _$$HouseListFetchCopyWith<$Res> {
  __$$HouseListFetchCopyWithImpl(
      _$HouseListFetch _value, $Res Function(_$HouseListFetch) _then)
      : super(_value, (v) => _then(v as _$HouseListFetch));

  @override
  _$HouseListFetch get _value => super._value as _$HouseListFetch;
}

/// @nodoc

class _$HouseListFetch implements HouseListFetch {
  const _$HouseListFetch();

  @override
  String toString() {
    return 'HouseListEvent.fetch()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$HouseListFetch);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetch,
    required TResult Function() fetchNextPage,
    required TResult Function() refresh,
  }) {
    return fetch();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? fetch,
    TResult Function()? fetchNextPage,
    TResult Function()? refresh,
  }) {
    return fetch?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetch,
    TResult Function()? fetchNextPage,
    TResult Function()? refresh,
    required TResult orElse(),
  }) {
    if (fetch != null) {
      return fetch();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HouseListFetch value) fetch,
    required TResult Function(HouseListFetchNextPage value) fetchNextPage,
    required TResult Function(HouseListRefresh value) refresh,
  }) {
    return fetch(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(HouseListFetch value)? fetch,
    TResult Function(HouseListFetchNextPage value)? fetchNextPage,
    TResult Function(HouseListRefresh value)? refresh,
  }) {
    return fetch?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HouseListFetch value)? fetch,
    TResult Function(HouseListFetchNextPage value)? fetchNextPage,
    TResult Function(HouseListRefresh value)? refresh,
    required TResult orElse(),
  }) {
    if (fetch != null) {
      return fetch(this);
    }
    return orElse();
  }
}

abstract class HouseListFetch implements HouseListEvent {
  const factory HouseListFetch() = _$HouseListFetch;
}

/// @nodoc
abstract class _$$HouseListFetchNextPageCopyWith<$Res> {
  factory _$$HouseListFetchNextPageCopyWith(_$HouseListFetchNextPage value,
          $Res Function(_$HouseListFetchNextPage) then) =
      __$$HouseListFetchNextPageCopyWithImpl<$Res>;
}

/// @nodoc
class __$$HouseListFetchNextPageCopyWithImpl<$Res>
    extends _$HouseListEventCopyWithImpl<$Res>
    implements _$$HouseListFetchNextPageCopyWith<$Res> {
  __$$HouseListFetchNextPageCopyWithImpl(_$HouseListFetchNextPage _value,
      $Res Function(_$HouseListFetchNextPage) _then)
      : super(_value, (v) => _then(v as _$HouseListFetchNextPage));

  @override
  _$HouseListFetchNextPage get _value =>
      super._value as _$HouseListFetchNextPage;
}

/// @nodoc

class _$HouseListFetchNextPage implements HouseListFetchNextPage {
  const _$HouseListFetchNextPage();

  @override
  String toString() {
    return 'HouseListEvent.fetchNextPage()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$HouseListFetchNextPage);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetch,
    required TResult Function() fetchNextPage,
    required TResult Function() refresh,
  }) {
    return fetchNextPage();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? fetch,
    TResult Function()? fetchNextPage,
    TResult Function()? refresh,
  }) {
    return fetchNextPage?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetch,
    TResult Function()? fetchNextPage,
    TResult Function()? refresh,
    required TResult orElse(),
  }) {
    if (fetchNextPage != null) {
      return fetchNextPage();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HouseListFetch value) fetch,
    required TResult Function(HouseListFetchNextPage value) fetchNextPage,
    required TResult Function(HouseListRefresh value) refresh,
  }) {
    return fetchNextPage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(HouseListFetch value)? fetch,
    TResult Function(HouseListFetchNextPage value)? fetchNextPage,
    TResult Function(HouseListRefresh value)? refresh,
  }) {
    return fetchNextPage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HouseListFetch value)? fetch,
    TResult Function(HouseListFetchNextPage value)? fetchNextPage,
    TResult Function(HouseListRefresh value)? refresh,
    required TResult orElse(),
  }) {
    if (fetchNextPage != null) {
      return fetchNextPage(this);
    }
    return orElse();
  }
}

abstract class HouseListFetchNextPage implements HouseListEvent {
  const factory HouseListFetchNextPage() = _$HouseListFetchNextPage;
}

/// @nodoc
abstract class _$$HouseListRefreshCopyWith<$Res> {
  factory _$$HouseListRefreshCopyWith(
          _$HouseListRefresh value, $Res Function(_$HouseListRefresh) then) =
      __$$HouseListRefreshCopyWithImpl<$Res>;
}

/// @nodoc
class __$$HouseListRefreshCopyWithImpl<$Res>
    extends _$HouseListEventCopyWithImpl<$Res>
    implements _$$HouseListRefreshCopyWith<$Res> {
  __$$HouseListRefreshCopyWithImpl(
      _$HouseListRefresh _value, $Res Function(_$HouseListRefresh) _then)
      : super(_value, (v) => _then(v as _$HouseListRefresh));

  @override
  _$HouseListRefresh get _value => super._value as _$HouseListRefresh;
}

/// @nodoc

class _$HouseListRefresh implements HouseListRefresh {
  const _$HouseListRefresh();

  @override
  String toString() {
    return 'HouseListEvent.refresh()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$HouseListRefresh);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetch,
    required TResult Function() fetchNextPage,
    required TResult Function() refresh,
  }) {
    return refresh();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? fetch,
    TResult Function()? fetchNextPage,
    TResult Function()? refresh,
  }) {
    return refresh?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetch,
    TResult Function()? fetchNextPage,
    TResult Function()? refresh,
    required TResult orElse(),
  }) {
    if (refresh != null) {
      return refresh();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HouseListFetch value) fetch,
    required TResult Function(HouseListFetchNextPage value) fetchNextPage,
    required TResult Function(HouseListRefresh value) refresh,
  }) {
    return refresh(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(HouseListFetch value)? fetch,
    TResult Function(HouseListFetchNextPage value)? fetchNextPage,
    TResult Function(HouseListRefresh value)? refresh,
  }) {
    return refresh?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HouseListFetch value)? fetch,
    TResult Function(HouseListFetchNextPage value)? fetchNextPage,
    TResult Function(HouseListRefresh value)? refresh,
    required TResult orElse(),
  }) {
    if (refresh != null) {
      return refresh(this);
    }
    return orElse();
  }
}

abstract class HouseListRefresh implements HouseListEvent {
  const factory HouseListRefresh() = _$HouseListRefresh;
}

/// @nodoc
mixin _$HouseListState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<House> houses, bool allItemsLoaded) loaded,
    required TResult Function(String error) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<House> houses, bool allItemsLoaded)? loaded,
    TResult Function(String error)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<House> houses, bool allItemsLoaded)? loaded,
    TResult Function(String error)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HouseListLoading value) loading,
    required TResult Function(HouseListLoaded value) loaded,
    required TResult Function(HouseListFailure value) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(HouseListLoading value)? loading,
    TResult Function(HouseListLoaded value)? loaded,
    TResult Function(HouseListFailure value)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HouseListLoading value)? loading,
    TResult Function(HouseListLoaded value)? loaded,
    TResult Function(HouseListFailure value)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HouseListStateCopyWith<$Res> {
  factory $HouseListStateCopyWith(
          HouseListState value, $Res Function(HouseListState) then) =
      _$HouseListStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$HouseListStateCopyWithImpl<$Res>
    implements $HouseListStateCopyWith<$Res> {
  _$HouseListStateCopyWithImpl(this._value, this._then);

  final HouseListState _value;
  // ignore: unused_field
  final $Res Function(HouseListState) _then;
}

/// @nodoc
abstract class _$$HouseListLoadingCopyWith<$Res> {
  factory _$$HouseListLoadingCopyWith(
          _$HouseListLoading value, $Res Function(_$HouseListLoading) then) =
      __$$HouseListLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$HouseListLoadingCopyWithImpl<$Res>
    extends _$HouseListStateCopyWithImpl<$Res>
    implements _$$HouseListLoadingCopyWith<$Res> {
  __$$HouseListLoadingCopyWithImpl(
      _$HouseListLoading _value, $Res Function(_$HouseListLoading) _then)
      : super(_value, (v) => _then(v as _$HouseListLoading));

  @override
  _$HouseListLoading get _value => super._value as _$HouseListLoading;
}

/// @nodoc

class _$HouseListLoading implements HouseListLoading {
  const _$HouseListLoading();

  @override
  String toString() {
    return 'HouseListState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$HouseListLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<House> houses, bool allItemsLoaded) loaded,
    required TResult Function(String error) failure,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<House> houses, bool allItemsLoaded)? loaded,
    TResult Function(String error)? failure,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<House> houses, bool allItemsLoaded)? loaded,
    TResult Function(String error)? failure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HouseListLoading value) loading,
    required TResult Function(HouseListLoaded value) loaded,
    required TResult Function(HouseListFailure value) failure,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(HouseListLoading value)? loading,
    TResult Function(HouseListLoaded value)? loaded,
    TResult Function(HouseListFailure value)? failure,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HouseListLoading value)? loading,
    TResult Function(HouseListLoaded value)? loaded,
    TResult Function(HouseListFailure value)? failure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class HouseListLoading implements HouseListState {
  const factory HouseListLoading() = _$HouseListLoading;
}

/// @nodoc
abstract class _$$HouseListLoadedCopyWith<$Res> {
  factory _$$HouseListLoadedCopyWith(
          _$HouseListLoaded value, $Res Function(_$HouseListLoaded) then) =
      __$$HouseListLoadedCopyWithImpl<$Res>;
  $Res call({List<House> houses, bool allItemsLoaded});
}

/// @nodoc
class __$$HouseListLoadedCopyWithImpl<$Res>
    extends _$HouseListStateCopyWithImpl<$Res>
    implements _$$HouseListLoadedCopyWith<$Res> {
  __$$HouseListLoadedCopyWithImpl(
      _$HouseListLoaded _value, $Res Function(_$HouseListLoaded) _then)
      : super(_value, (v) => _then(v as _$HouseListLoaded));

  @override
  _$HouseListLoaded get _value => super._value as _$HouseListLoaded;

  @override
  $Res call({
    Object? houses = freezed,
    Object? allItemsLoaded = freezed,
  }) {
    return _then(_$HouseListLoaded(
      houses: houses == freezed
          ? _value._houses
          : houses // ignore: cast_nullable_to_non_nullable
              as List<House>,
      allItemsLoaded: allItemsLoaded == freezed
          ? _value.allItemsLoaded
          : allItemsLoaded // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$HouseListLoaded implements HouseListLoaded {
  const _$HouseListLoaded(
      {required final List<House> houses, this.allItemsLoaded = false})
      : _houses = houses;

  final List<House> _houses;
  @override
  List<House> get houses {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_houses);
  }

  @override
  @JsonKey()
  final bool allItemsLoaded;

  @override
  String toString() {
    return 'HouseListState.loaded(houses: $houses, allItemsLoaded: $allItemsLoaded)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HouseListLoaded &&
            const DeepCollectionEquality().equals(other._houses, _houses) &&
            const DeepCollectionEquality()
                .equals(other.allItemsLoaded, allItemsLoaded));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_houses),
      const DeepCollectionEquality().hash(allItemsLoaded));

  @JsonKey(ignore: true)
  @override
  _$$HouseListLoadedCopyWith<_$HouseListLoaded> get copyWith =>
      __$$HouseListLoadedCopyWithImpl<_$HouseListLoaded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<House> houses, bool allItemsLoaded) loaded,
    required TResult Function(String error) failure,
  }) {
    return loaded(houses, allItemsLoaded);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<House> houses, bool allItemsLoaded)? loaded,
    TResult Function(String error)? failure,
  }) {
    return loaded?.call(houses, allItemsLoaded);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<House> houses, bool allItemsLoaded)? loaded,
    TResult Function(String error)? failure,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(houses, allItemsLoaded);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HouseListLoading value) loading,
    required TResult Function(HouseListLoaded value) loaded,
    required TResult Function(HouseListFailure value) failure,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(HouseListLoading value)? loading,
    TResult Function(HouseListLoaded value)? loaded,
    TResult Function(HouseListFailure value)? failure,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HouseListLoading value)? loading,
    TResult Function(HouseListLoaded value)? loaded,
    TResult Function(HouseListFailure value)? failure,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class HouseListLoaded implements HouseListState {
  const factory HouseListLoaded(
      {required final List<House> houses,
      final bool allItemsLoaded}) = _$HouseListLoaded;

  List<House> get houses => throw _privateConstructorUsedError;
  bool get allItemsLoaded => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$HouseListLoadedCopyWith<_$HouseListLoaded> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$HouseListFailureCopyWith<$Res> {
  factory _$$HouseListFailureCopyWith(
          _$HouseListFailure value, $Res Function(_$HouseListFailure) then) =
      __$$HouseListFailureCopyWithImpl<$Res>;
  $Res call({String error});
}

/// @nodoc
class __$$HouseListFailureCopyWithImpl<$Res>
    extends _$HouseListStateCopyWithImpl<$Res>
    implements _$$HouseListFailureCopyWith<$Res> {
  __$$HouseListFailureCopyWithImpl(
      _$HouseListFailure _value, $Res Function(_$HouseListFailure) _then)
      : super(_value, (v) => _then(v as _$HouseListFailure));

  @override
  _$HouseListFailure get _value => super._value as _$HouseListFailure;

  @override
  $Res call({
    Object? error = freezed,
  }) {
    return _then(_$HouseListFailure(
      error: error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$HouseListFailure implements HouseListFailure {
  const _$HouseListFailure({required this.error});

  @override
  final String error;

  @override
  String toString() {
    return 'HouseListState.failure(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HouseListFailure &&
            const DeepCollectionEquality().equals(other.error, error));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(error));

  @JsonKey(ignore: true)
  @override
  _$$HouseListFailureCopyWith<_$HouseListFailure> get copyWith =>
      __$$HouseListFailureCopyWithImpl<_$HouseListFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<House> houses, bool allItemsLoaded) loaded,
    required TResult Function(String error) failure,
  }) {
    return failure(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<House> houses, bool allItemsLoaded)? loaded,
    TResult Function(String error)? failure,
  }) {
    return failure?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<House> houses, bool allItemsLoaded)? loaded,
    TResult Function(String error)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HouseListLoading value) loading,
    required TResult Function(HouseListLoaded value) loaded,
    required TResult Function(HouseListFailure value) failure,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(HouseListLoading value)? loading,
    TResult Function(HouseListLoaded value)? loaded,
    TResult Function(HouseListFailure value)? failure,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HouseListLoading value)? loading,
    TResult Function(HouseListLoaded value)? loaded,
    TResult Function(HouseListFailure value)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class HouseListFailure implements HouseListState {
  const factory HouseListFailure({required final String error}) =
      _$HouseListFailure;

  String get error => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$HouseListFailureCopyWith<_$HouseListFailure> get copyWith =>
      throw _privateConstructorUsedError;
}
