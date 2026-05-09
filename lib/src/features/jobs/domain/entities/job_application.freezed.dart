// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'job_application.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$JobApplication {

 String get id; String get jobId; String get userId; String get status; DateTime get appliedAt;
/// Create a copy of JobApplication
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$JobApplicationCopyWith<JobApplication> get copyWith => _$JobApplicationCopyWithImpl<JobApplication>(this as JobApplication, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is JobApplication&&(identical(other.id, id) || other.id == id)&&(identical(other.jobId, jobId) || other.jobId == jobId)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.status, status) || other.status == status)&&(identical(other.appliedAt, appliedAt) || other.appliedAt == appliedAt));
}


@override
int get hashCode => Object.hash(runtimeType,id,jobId,userId,status,appliedAt);

@override
String toString() {
  return 'JobApplication(id: $id, jobId: $jobId, userId: $userId, status: $status, appliedAt: $appliedAt)';
}


}

/// @nodoc
abstract mixin class $JobApplicationCopyWith<$Res>  {
  factory $JobApplicationCopyWith(JobApplication value, $Res Function(JobApplication) _then) = _$JobApplicationCopyWithImpl;
@useResult
$Res call({
 String id, String jobId, String userId, String status, DateTime appliedAt
});




}
/// @nodoc
class _$JobApplicationCopyWithImpl<$Res>
    implements $JobApplicationCopyWith<$Res> {
  _$JobApplicationCopyWithImpl(this._self, this._then);

  final JobApplication _self;
  final $Res Function(JobApplication) _then;

/// Create a copy of JobApplication
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? jobId = null,Object? userId = null,Object? status = null,Object? appliedAt = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,jobId: null == jobId ? _self.jobId : jobId // ignore: cast_nullable_to_non_nullable
as String,userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,appliedAt: null == appliedAt ? _self.appliedAt : appliedAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}

}


/// Adds pattern-matching-related methods to [JobApplication].
extension JobApplicationPatterns on JobApplication {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _JobApplication value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _JobApplication() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _JobApplication value)  $default,){
final _that = this;
switch (_that) {
case _JobApplication():
return $default(_that);}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _JobApplication value)?  $default,){
final _that = this;
switch (_that) {
case _JobApplication() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String jobId,  String userId,  String status,  DateTime appliedAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _JobApplication() when $default != null:
return $default(_that.id,_that.jobId,_that.userId,_that.status,_that.appliedAt);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String jobId,  String userId,  String status,  DateTime appliedAt)  $default,) {final _that = this;
switch (_that) {
case _JobApplication():
return $default(_that.id,_that.jobId,_that.userId,_that.status,_that.appliedAt);}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String jobId,  String userId,  String status,  DateTime appliedAt)?  $default,) {final _that = this;
switch (_that) {
case _JobApplication() when $default != null:
return $default(_that.id,_that.jobId,_that.userId,_that.status,_that.appliedAt);case _:
  return null;

}
}

}

/// @nodoc


class _JobApplication implements JobApplication {
  const _JobApplication({required this.id, required this.jobId, required this.userId, required this.status, required this.appliedAt});
  

@override final  String id;
@override final  String jobId;
@override final  String userId;
@override final  String status;
@override final  DateTime appliedAt;

/// Create a copy of JobApplication
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$JobApplicationCopyWith<_JobApplication> get copyWith => __$JobApplicationCopyWithImpl<_JobApplication>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _JobApplication&&(identical(other.id, id) || other.id == id)&&(identical(other.jobId, jobId) || other.jobId == jobId)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.status, status) || other.status == status)&&(identical(other.appliedAt, appliedAt) || other.appliedAt == appliedAt));
}


@override
int get hashCode => Object.hash(runtimeType,id,jobId,userId,status,appliedAt);

@override
String toString() {
  return 'JobApplication(id: $id, jobId: $jobId, userId: $userId, status: $status, appliedAt: $appliedAt)';
}


}

/// @nodoc
abstract mixin class _$JobApplicationCopyWith<$Res> implements $JobApplicationCopyWith<$Res> {
  factory _$JobApplicationCopyWith(_JobApplication value, $Res Function(_JobApplication) _then) = __$JobApplicationCopyWithImpl;
@override @useResult
$Res call({
 String id, String jobId, String userId, String status, DateTime appliedAt
});




}
/// @nodoc
class __$JobApplicationCopyWithImpl<$Res>
    implements _$JobApplicationCopyWith<$Res> {
  __$JobApplicationCopyWithImpl(this._self, this._then);

  final _JobApplication _self;
  final $Res Function(_JobApplication) _then;

/// Create a copy of JobApplication
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? jobId = null,Object? userId = null,Object? status = null,Object? appliedAt = null,}) {
  return _then(_JobApplication(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,jobId: null == jobId ? _self.jobId : jobId // ignore: cast_nullable_to_non_nullable
as String,userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,appliedAt: null == appliedAt ? _self.appliedAt : appliedAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}


}

// dart format on
