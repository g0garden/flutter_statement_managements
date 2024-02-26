// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'todo_bloc_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$TodoBlocState {
  BlocStatus get status => throw _privateConstructorUsedError;
  List<Todo> get todoList => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TodoBlocStateCopyWith<TodoBlocState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TodoBlocStateCopyWith<$Res> {
  factory $TodoBlocStateCopyWith(
          TodoBlocState value, $Res Function(TodoBlocState) then) =
      _$TodoBlocStateCopyWithImpl<$Res, TodoBlocState>;
  @useResult
  $Res call({BlocStatus status, List<Todo> todoList});
}

/// @nodoc
class _$TodoBlocStateCopyWithImpl<$Res, $Val extends TodoBlocState>
    implements $TodoBlocStateCopyWith<$Res> {
  _$TodoBlocStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? todoList = null,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as BlocStatus,
      todoList: null == todoList
          ? _value.todoList
          : todoList // ignore: cast_nullable_to_non_nullable
              as List<Todo>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TodoBlocStatusImplCopyWith<$Res>
    implements $TodoBlocStateCopyWith<$Res> {
  factory _$$TodoBlocStatusImplCopyWith(_$TodoBlocStatusImpl value,
          $Res Function(_$TodoBlocStatusImpl) then) =
      __$$TodoBlocStatusImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({BlocStatus status, List<Todo> todoList});
}

/// @nodoc
class __$$TodoBlocStatusImplCopyWithImpl<$Res>
    extends _$TodoBlocStateCopyWithImpl<$Res, _$TodoBlocStatusImpl>
    implements _$$TodoBlocStatusImplCopyWith<$Res> {
  __$$TodoBlocStatusImplCopyWithImpl(
      _$TodoBlocStatusImpl _value, $Res Function(_$TodoBlocStatusImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? todoList = null,
  }) {
    return _then(_$TodoBlocStatusImpl(
      null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as BlocStatus,
      null == todoList
          ? _value._todoList
          : todoList // ignore: cast_nullable_to_non_nullable
              as List<Todo>,
    ));
  }
}

/// @nodoc

class _$TodoBlocStatusImpl implements _TodoBlocStatus {
  const _$TodoBlocStatusImpl(this.status, final List<Todo> todoList)
      : _todoList = todoList;

  @override
  final BlocStatus status;
  final List<Todo> _todoList;
  @override
  List<Todo> get todoList {
    if (_todoList is EqualUnmodifiableListView) return _todoList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_todoList);
  }

  @override
  String toString() {
    return 'TodoBlocState(status: $status, todoList: $todoList)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TodoBlocStatusImpl &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality().equals(other._todoList, _todoList));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, status, const DeepCollectionEquality().hash(_todoList));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TodoBlocStatusImplCopyWith<_$TodoBlocStatusImpl> get copyWith =>
      __$$TodoBlocStatusImplCopyWithImpl<_$TodoBlocStatusImpl>(
          this, _$identity);
}

abstract class _TodoBlocStatus implements TodoBlocState {
  const factory _TodoBlocStatus(
          final BlocStatus status, final List<Todo> todoList) =
      _$TodoBlocStatusImpl;

  @override
  BlocStatus get status;
  @override
  List<Todo> get todoList;
  @override
  @JsonKey(ignore: true)
  _$$TodoBlocStatusImplCopyWith<_$TodoBlocStatusImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
