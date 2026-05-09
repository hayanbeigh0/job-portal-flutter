// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'job_details_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$JobDetailsEvent {

 String get jobId;
/// Create a copy of JobDetailsEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$JobDetailsEventCopyWith<JobDetailsEvent> get copyWith => _$JobDetailsEventCopyWithImpl<JobDetailsEvent>(this as JobDetailsEvent, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is JobDetailsEvent&&(identical(other.jobId, jobId) || other.jobId == jobId));
}


@override
int get hashCode => Object.hash(runtimeType,jobId);

@override
String toString() {
  return 'JobDetailsEvent(jobId: $jobId)';
}


}

/// @nodoc
abstract mixin class $JobDetailsEventCopyWith<$Res>  {
  factory $JobDetailsEventCopyWith(JobDetailsEvent value, $Res Function(JobDetailsEvent) _then) = _$JobDetailsEventCopyWithImpl;
@useResult
$Res call({
 String jobId
});




}
/// @nodoc
class _$JobDetailsEventCopyWithImpl<$Res>
    implements $JobDetailsEventCopyWith<$Res> {
  _$JobDetailsEventCopyWithImpl(this._self, this._then);

  final JobDetailsEvent _self;
  final $Res Function(JobDetailsEvent) _then;

/// Create a copy of JobDetailsEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? jobId = null,}) {
  return _then(_self.copyWith(
jobId: null == jobId ? _self.jobId : jobId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [JobDetailsEvent].
extension JobDetailsEventPatterns on JobDetailsEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _LoadJobDetails value)?  loadJobDetails,TResult Function( _ApplyToJob value)?  applyToJob,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _LoadJobDetails() when loadJobDetails != null:
return loadJobDetails(_that);case _ApplyToJob() when applyToJob != null:
return applyToJob(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _LoadJobDetails value)  loadJobDetails,required TResult Function( _ApplyToJob value)  applyToJob,}){
final _that = this;
switch (_that) {
case _LoadJobDetails():
return loadJobDetails(_that);case _ApplyToJob():
return applyToJob(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _LoadJobDetails value)?  loadJobDetails,TResult? Function( _ApplyToJob value)?  applyToJob,}){
final _that = this;
switch (_that) {
case _LoadJobDetails() when loadJobDetails != null:
return loadJobDetails(_that);case _ApplyToJob() when applyToJob != null:
return applyToJob(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( String jobId)?  loadJobDetails,TResult Function( String jobId)?  applyToJob,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _LoadJobDetails() when loadJobDetails != null:
return loadJobDetails(_that.jobId);case _ApplyToJob() when applyToJob != null:
return applyToJob(_that.jobId);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( String jobId)  loadJobDetails,required TResult Function( String jobId)  applyToJob,}) {final _that = this;
switch (_that) {
case _LoadJobDetails():
return loadJobDetails(_that.jobId);case _ApplyToJob():
return applyToJob(_that.jobId);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( String jobId)?  loadJobDetails,TResult? Function( String jobId)?  applyToJob,}) {final _that = this;
switch (_that) {
case _LoadJobDetails() when loadJobDetails != null:
return loadJobDetails(_that.jobId);case _ApplyToJob() when applyToJob != null:
return applyToJob(_that.jobId);case _:
  return null;

}
}

}

/// @nodoc


class _LoadJobDetails implements JobDetailsEvent {
  const _LoadJobDetails(this.jobId);
  

@override final  String jobId;

/// Create a copy of JobDetailsEvent
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LoadJobDetailsCopyWith<_LoadJobDetails> get copyWith => __$LoadJobDetailsCopyWithImpl<_LoadJobDetails>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LoadJobDetails&&(identical(other.jobId, jobId) || other.jobId == jobId));
}


@override
int get hashCode => Object.hash(runtimeType,jobId);

@override
String toString() {
  return 'JobDetailsEvent.loadJobDetails(jobId: $jobId)';
}


}

/// @nodoc
abstract mixin class _$LoadJobDetailsCopyWith<$Res> implements $JobDetailsEventCopyWith<$Res> {
  factory _$LoadJobDetailsCopyWith(_LoadJobDetails value, $Res Function(_LoadJobDetails) _then) = __$LoadJobDetailsCopyWithImpl;
@override @useResult
$Res call({
 String jobId
});




}
/// @nodoc
class __$LoadJobDetailsCopyWithImpl<$Res>
    implements _$LoadJobDetailsCopyWith<$Res> {
  __$LoadJobDetailsCopyWithImpl(this._self, this._then);

  final _LoadJobDetails _self;
  final $Res Function(_LoadJobDetails) _then;

/// Create a copy of JobDetailsEvent
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? jobId = null,}) {
  return _then(_LoadJobDetails(
null == jobId ? _self.jobId : jobId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _ApplyToJob implements JobDetailsEvent {
  const _ApplyToJob(this.jobId);
  

@override final  String jobId;

/// Create a copy of JobDetailsEvent
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ApplyToJobCopyWith<_ApplyToJob> get copyWith => __$ApplyToJobCopyWithImpl<_ApplyToJob>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ApplyToJob&&(identical(other.jobId, jobId) || other.jobId == jobId));
}


@override
int get hashCode => Object.hash(runtimeType,jobId);

@override
String toString() {
  return 'JobDetailsEvent.applyToJob(jobId: $jobId)';
}


}

/// @nodoc
abstract mixin class _$ApplyToJobCopyWith<$Res> implements $JobDetailsEventCopyWith<$Res> {
  factory _$ApplyToJobCopyWith(_ApplyToJob value, $Res Function(_ApplyToJob) _then) = __$ApplyToJobCopyWithImpl;
@override @useResult
$Res call({
 String jobId
});




}
/// @nodoc
class __$ApplyToJobCopyWithImpl<$Res>
    implements _$ApplyToJobCopyWith<$Res> {
  __$ApplyToJobCopyWithImpl(this._self, this._then);

  final _ApplyToJob _self;
  final $Res Function(_ApplyToJob) _then;

/// Create a copy of JobDetailsEvent
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? jobId = null,}) {
  return _then(_ApplyToJob(
null == jobId ? _self.jobId : jobId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc
mixin _$JobDetailsState {

 Job? get job; bool get isLoading; bool get isApplying;/// True when the user applied in THIS session — triggers the snackbar.
 bool get justApplied;/// True when the job was already applied to (from API or after justApplied).
 bool get hasApplied; ApiFailure? get failure;
/// Create a copy of JobDetailsState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$JobDetailsStateCopyWith<JobDetailsState> get copyWith => _$JobDetailsStateCopyWithImpl<JobDetailsState>(this as JobDetailsState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is JobDetailsState&&(identical(other.job, job) || other.job == job)&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.isApplying, isApplying) || other.isApplying == isApplying)&&(identical(other.justApplied, justApplied) || other.justApplied == justApplied)&&(identical(other.hasApplied, hasApplied) || other.hasApplied == hasApplied)&&(identical(other.failure, failure) || other.failure == failure));
}


@override
int get hashCode => Object.hash(runtimeType,job,isLoading,isApplying,justApplied,hasApplied,failure);

@override
String toString() {
  return 'JobDetailsState(job: $job, isLoading: $isLoading, isApplying: $isApplying, justApplied: $justApplied, hasApplied: $hasApplied, failure: $failure)';
}


}

/// @nodoc
abstract mixin class $JobDetailsStateCopyWith<$Res>  {
  factory $JobDetailsStateCopyWith(JobDetailsState value, $Res Function(JobDetailsState) _then) = _$JobDetailsStateCopyWithImpl;
@useResult
$Res call({
 Job? job, bool isLoading, bool isApplying, bool justApplied, bool hasApplied, ApiFailure? failure
});


$JobCopyWith<$Res>? get job;$ApiFailureCopyWith<$Res>? get failure;

}
/// @nodoc
class _$JobDetailsStateCopyWithImpl<$Res>
    implements $JobDetailsStateCopyWith<$Res> {
  _$JobDetailsStateCopyWithImpl(this._self, this._then);

  final JobDetailsState _self;
  final $Res Function(JobDetailsState) _then;

/// Create a copy of JobDetailsState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? job = freezed,Object? isLoading = null,Object? isApplying = null,Object? justApplied = null,Object? hasApplied = null,Object? failure = freezed,}) {
  return _then(_self.copyWith(
job: freezed == job ? _self.job : job // ignore: cast_nullable_to_non_nullable
as Job?,isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,isApplying: null == isApplying ? _self.isApplying : isApplying // ignore: cast_nullable_to_non_nullable
as bool,justApplied: null == justApplied ? _self.justApplied : justApplied // ignore: cast_nullable_to_non_nullable
as bool,hasApplied: null == hasApplied ? _self.hasApplied : hasApplied // ignore: cast_nullable_to_non_nullable
as bool,failure: freezed == failure ? _self.failure : failure // ignore: cast_nullable_to_non_nullable
as ApiFailure?,
  ));
}
/// Create a copy of JobDetailsState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$JobCopyWith<$Res>? get job {
    if (_self.job == null) {
    return null;
  }

  return $JobCopyWith<$Res>(_self.job!, (value) {
    return _then(_self.copyWith(job: value));
  });
}/// Create a copy of JobDetailsState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ApiFailureCopyWith<$Res>? get failure {
    if (_self.failure == null) {
    return null;
  }

  return $ApiFailureCopyWith<$Res>(_self.failure!, (value) {
    return _then(_self.copyWith(failure: value));
  });
}
}


/// Adds pattern-matching-related methods to [JobDetailsState].
extension JobDetailsStatePatterns on JobDetailsState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _JobDetailsState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _JobDetailsState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _JobDetailsState value)  $default,){
final _that = this;
switch (_that) {
case _JobDetailsState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _JobDetailsState value)?  $default,){
final _that = this;
switch (_that) {
case _JobDetailsState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( Job? job,  bool isLoading,  bool isApplying,  bool justApplied,  bool hasApplied,  ApiFailure? failure)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _JobDetailsState() when $default != null:
return $default(_that.job,_that.isLoading,_that.isApplying,_that.justApplied,_that.hasApplied,_that.failure);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( Job? job,  bool isLoading,  bool isApplying,  bool justApplied,  bool hasApplied,  ApiFailure? failure)  $default,) {final _that = this;
switch (_that) {
case _JobDetailsState():
return $default(_that.job,_that.isLoading,_that.isApplying,_that.justApplied,_that.hasApplied,_that.failure);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( Job? job,  bool isLoading,  bool isApplying,  bool justApplied,  bool hasApplied,  ApiFailure? failure)?  $default,) {final _that = this;
switch (_that) {
case _JobDetailsState() when $default != null:
return $default(_that.job,_that.isLoading,_that.isApplying,_that.justApplied,_that.hasApplied,_that.failure);case _:
  return null;

}
}

}

/// @nodoc


class _JobDetailsState implements JobDetailsState {
  const _JobDetailsState({this.job, required this.isLoading, required this.isApplying, required this.justApplied, required this.hasApplied, this.failure});
  

@override final  Job? job;
@override final  bool isLoading;
@override final  bool isApplying;
/// True when the user applied in THIS session — triggers the snackbar.
@override final  bool justApplied;
/// True when the job was already applied to (from API or after justApplied).
@override final  bool hasApplied;
@override final  ApiFailure? failure;

/// Create a copy of JobDetailsState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$JobDetailsStateCopyWith<_JobDetailsState> get copyWith => __$JobDetailsStateCopyWithImpl<_JobDetailsState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _JobDetailsState&&(identical(other.job, job) || other.job == job)&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.isApplying, isApplying) || other.isApplying == isApplying)&&(identical(other.justApplied, justApplied) || other.justApplied == justApplied)&&(identical(other.hasApplied, hasApplied) || other.hasApplied == hasApplied)&&(identical(other.failure, failure) || other.failure == failure));
}


@override
int get hashCode => Object.hash(runtimeType,job,isLoading,isApplying,justApplied,hasApplied,failure);

@override
String toString() {
  return 'JobDetailsState(job: $job, isLoading: $isLoading, isApplying: $isApplying, justApplied: $justApplied, hasApplied: $hasApplied, failure: $failure)';
}


}

/// @nodoc
abstract mixin class _$JobDetailsStateCopyWith<$Res> implements $JobDetailsStateCopyWith<$Res> {
  factory _$JobDetailsStateCopyWith(_JobDetailsState value, $Res Function(_JobDetailsState) _then) = __$JobDetailsStateCopyWithImpl;
@override @useResult
$Res call({
 Job? job, bool isLoading, bool isApplying, bool justApplied, bool hasApplied, ApiFailure? failure
});


@override $JobCopyWith<$Res>? get job;@override $ApiFailureCopyWith<$Res>? get failure;

}
/// @nodoc
class __$JobDetailsStateCopyWithImpl<$Res>
    implements _$JobDetailsStateCopyWith<$Res> {
  __$JobDetailsStateCopyWithImpl(this._self, this._then);

  final _JobDetailsState _self;
  final $Res Function(_JobDetailsState) _then;

/// Create a copy of JobDetailsState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? job = freezed,Object? isLoading = null,Object? isApplying = null,Object? justApplied = null,Object? hasApplied = null,Object? failure = freezed,}) {
  return _then(_JobDetailsState(
job: freezed == job ? _self.job : job // ignore: cast_nullable_to_non_nullable
as Job?,isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,isApplying: null == isApplying ? _self.isApplying : isApplying // ignore: cast_nullable_to_non_nullable
as bool,justApplied: null == justApplied ? _self.justApplied : justApplied // ignore: cast_nullable_to_non_nullable
as bool,hasApplied: null == hasApplied ? _self.hasApplied : hasApplied // ignore: cast_nullable_to_non_nullable
as bool,failure: freezed == failure ? _self.failure : failure // ignore: cast_nullable_to_non_nullable
as ApiFailure?,
  ));
}

/// Create a copy of JobDetailsState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$JobCopyWith<$Res>? get job {
    if (_self.job == null) {
    return null;
  }

  return $JobCopyWith<$Res>(_self.job!, (value) {
    return _then(_self.copyWith(job: value));
  });
}/// Create a copy of JobDetailsState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ApiFailureCopyWith<$Res>? get failure {
    if (_self.failure == null) {
    return null;
  }

  return $ApiFailureCopyWith<$Res>(_self.failure!, (value) {
    return _then(_self.copyWith(failure: value));
  });
}
}

// dart format on
