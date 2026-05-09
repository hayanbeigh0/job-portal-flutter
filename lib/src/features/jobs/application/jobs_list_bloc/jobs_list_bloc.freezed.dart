// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'jobs_list_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$JobsListEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is JobsListEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'JobsListEvent()';
}


}

/// @nodoc
class $JobsListEventCopyWith<$Res>  {
$JobsListEventCopyWith(JobsListEvent _, $Res Function(JobsListEvent) __);
}


/// Adds pattern-matching-related methods to [JobsListEvent].
extension JobsListEventPatterns on JobsListEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _LoadJobs value)?  loadJobs,TResult Function( _LoadMore value)?  loadMore,TResult Function( _Refresh value)?  refresh,TResult Function( _JobUpdated value)?  jobUpdated,TResult Function( _NewJobArrived value)?  newJobArrived,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _LoadJobs() when loadJobs != null:
return loadJobs(_that);case _LoadMore() when loadMore != null:
return loadMore(_that);case _Refresh() when refresh != null:
return refresh(_that);case _JobUpdated() when jobUpdated != null:
return jobUpdated(_that);case _NewJobArrived() when newJobArrived != null:
return newJobArrived(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _LoadJobs value)  loadJobs,required TResult Function( _LoadMore value)  loadMore,required TResult Function( _Refresh value)  refresh,required TResult Function( _JobUpdated value)  jobUpdated,required TResult Function( _NewJobArrived value)  newJobArrived,}){
final _that = this;
switch (_that) {
case _LoadJobs():
return loadJobs(_that);case _LoadMore():
return loadMore(_that);case _Refresh():
return refresh(_that);case _JobUpdated():
return jobUpdated(_that);case _NewJobArrived():
return newJobArrived(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _LoadJobs value)?  loadJobs,TResult? Function( _LoadMore value)?  loadMore,TResult? Function( _Refresh value)?  refresh,TResult? Function( _JobUpdated value)?  jobUpdated,TResult? Function( _NewJobArrived value)?  newJobArrived,}){
final _that = this;
switch (_that) {
case _LoadJobs() when loadJobs != null:
return loadJobs(_that);case _LoadMore() when loadMore != null:
return loadMore(_that);case _Refresh() when refresh != null:
return refresh(_that);case _JobUpdated() when jobUpdated != null:
return jobUpdated(_that);case _NewJobArrived() when newJobArrived != null:
return newJobArrived(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  loadJobs,TResult Function()?  loadMore,TResult Function()?  refresh,TResult Function( String jobId,  int applicantsCount)?  jobUpdated,TResult Function( Job job)?  newJobArrived,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _LoadJobs() when loadJobs != null:
return loadJobs();case _LoadMore() when loadMore != null:
return loadMore();case _Refresh() when refresh != null:
return refresh();case _JobUpdated() when jobUpdated != null:
return jobUpdated(_that.jobId,_that.applicantsCount);case _NewJobArrived() when newJobArrived != null:
return newJobArrived(_that.job);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  loadJobs,required TResult Function()  loadMore,required TResult Function()  refresh,required TResult Function( String jobId,  int applicantsCount)  jobUpdated,required TResult Function( Job job)  newJobArrived,}) {final _that = this;
switch (_that) {
case _LoadJobs():
return loadJobs();case _LoadMore():
return loadMore();case _Refresh():
return refresh();case _JobUpdated():
return jobUpdated(_that.jobId,_that.applicantsCount);case _NewJobArrived():
return newJobArrived(_that.job);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  loadJobs,TResult? Function()?  loadMore,TResult? Function()?  refresh,TResult? Function( String jobId,  int applicantsCount)?  jobUpdated,TResult? Function( Job job)?  newJobArrived,}) {final _that = this;
switch (_that) {
case _LoadJobs() when loadJobs != null:
return loadJobs();case _LoadMore() when loadMore != null:
return loadMore();case _Refresh() when refresh != null:
return refresh();case _JobUpdated() when jobUpdated != null:
return jobUpdated(_that.jobId,_that.applicantsCount);case _NewJobArrived() when newJobArrived != null:
return newJobArrived(_that.job);case _:
  return null;

}
}

}

/// @nodoc


class _LoadJobs implements JobsListEvent {
  const _LoadJobs();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LoadJobs);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'JobsListEvent.loadJobs()';
}


}




/// @nodoc


class _LoadMore implements JobsListEvent {
  const _LoadMore();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LoadMore);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'JobsListEvent.loadMore()';
}


}




/// @nodoc


class _Refresh implements JobsListEvent {
  const _Refresh();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Refresh);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'JobsListEvent.refresh()';
}


}




/// @nodoc


class _JobUpdated implements JobsListEvent {
  const _JobUpdated({required this.jobId, required this.applicantsCount});
  

 final  String jobId;
 final  int applicantsCount;

/// Create a copy of JobsListEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$JobUpdatedCopyWith<_JobUpdated> get copyWith => __$JobUpdatedCopyWithImpl<_JobUpdated>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _JobUpdated&&(identical(other.jobId, jobId) || other.jobId == jobId)&&(identical(other.applicantsCount, applicantsCount) || other.applicantsCount == applicantsCount));
}


@override
int get hashCode => Object.hash(runtimeType,jobId,applicantsCount);

@override
String toString() {
  return 'JobsListEvent.jobUpdated(jobId: $jobId, applicantsCount: $applicantsCount)';
}


}

/// @nodoc
abstract mixin class _$JobUpdatedCopyWith<$Res> implements $JobsListEventCopyWith<$Res> {
  factory _$JobUpdatedCopyWith(_JobUpdated value, $Res Function(_JobUpdated) _then) = __$JobUpdatedCopyWithImpl;
@useResult
$Res call({
 String jobId, int applicantsCount
});




}
/// @nodoc
class __$JobUpdatedCopyWithImpl<$Res>
    implements _$JobUpdatedCopyWith<$Res> {
  __$JobUpdatedCopyWithImpl(this._self, this._then);

  final _JobUpdated _self;
  final $Res Function(_JobUpdated) _then;

/// Create a copy of JobsListEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? jobId = null,Object? applicantsCount = null,}) {
  return _then(_JobUpdated(
jobId: null == jobId ? _self.jobId : jobId // ignore: cast_nullable_to_non_nullable
as String,applicantsCount: null == applicantsCount ? _self.applicantsCount : applicantsCount // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc


class _NewJobArrived implements JobsListEvent {
  const _NewJobArrived({required this.job});
  

 final  Job job;

/// Create a copy of JobsListEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$NewJobArrivedCopyWith<_NewJobArrived> get copyWith => __$NewJobArrivedCopyWithImpl<_NewJobArrived>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _NewJobArrived&&(identical(other.job, job) || other.job == job));
}


@override
int get hashCode => Object.hash(runtimeType,job);

@override
String toString() {
  return 'JobsListEvent.newJobArrived(job: $job)';
}


}

/// @nodoc
abstract mixin class _$NewJobArrivedCopyWith<$Res> implements $JobsListEventCopyWith<$Res> {
  factory _$NewJobArrivedCopyWith(_NewJobArrived value, $Res Function(_NewJobArrived) _then) = __$NewJobArrivedCopyWithImpl;
@useResult
$Res call({
 Job job
});


$JobCopyWith<$Res> get job;

}
/// @nodoc
class __$NewJobArrivedCopyWithImpl<$Res>
    implements _$NewJobArrivedCopyWith<$Res> {
  __$NewJobArrivedCopyWithImpl(this._self, this._then);

  final _NewJobArrived _self;
  final $Res Function(_NewJobArrived) _then;

/// Create a copy of JobsListEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? job = null,}) {
  return _then(_NewJobArrived(
job: null == job ? _self.job : job // ignore: cast_nullable_to_non_nullable
as Job,
  ));
}

/// Create a copy of JobsListEvent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$JobCopyWith<$Res> get job {
  
  return $JobCopyWith<$Res>(_self.job, (value) {
    return _then(_self.copyWith(job: value));
  });
}
}

/// @nodoc
mixin _$JobsListState {

 List<Job> get jobs; int get currentPage; bool get hasMore; bool get isLoading; bool get isLoadingMore; ApiFailure? get failure;
/// Create a copy of JobsListState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$JobsListStateCopyWith<JobsListState> get copyWith => _$JobsListStateCopyWithImpl<JobsListState>(this as JobsListState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is JobsListState&&const DeepCollectionEquality().equals(other.jobs, jobs)&&(identical(other.currentPage, currentPage) || other.currentPage == currentPage)&&(identical(other.hasMore, hasMore) || other.hasMore == hasMore)&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.isLoadingMore, isLoadingMore) || other.isLoadingMore == isLoadingMore)&&(identical(other.failure, failure) || other.failure == failure));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(jobs),currentPage,hasMore,isLoading,isLoadingMore,failure);

@override
String toString() {
  return 'JobsListState(jobs: $jobs, currentPage: $currentPage, hasMore: $hasMore, isLoading: $isLoading, isLoadingMore: $isLoadingMore, failure: $failure)';
}


}

/// @nodoc
abstract mixin class $JobsListStateCopyWith<$Res>  {
  factory $JobsListStateCopyWith(JobsListState value, $Res Function(JobsListState) _then) = _$JobsListStateCopyWithImpl;
@useResult
$Res call({
 List<Job> jobs, int currentPage, bool hasMore, bool isLoading, bool isLoadingMore, ApiFailure? failure
});


$ApiFailureCopyWith<$Res>? get failure;

}
/// @nodoc
class _$JobsListStateCopyWithImpl<$Res>
    implements $JobsListStateCopyWith<$Res> {
  _$JobsListStateCopyWithImpl(this._self, this._then);

  final JobsListState _self;
  final $Res Function(JobsListState) _then;

/// Create a copy of JobsListState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? jobs = null,Object? currentPage = null,Object? hasMore = null,Object? isLoading = null,Object? isLoadingMore = null,Object? failure = freezed,}) {
  return _then(_self.copyWith(
jobs: null == jobs ? _self.jobs : jobs // ignore: cast_nullable_to_non_nullable
as List<Job>,currentPage: null == currentPage ? _self.currentPage : currentPage // ignore: cast_nullable_to_non_nullable
as int,hasMore: null == hasMore ? _self.hasMore : hasMore // ignore: cast_nullable_to_non_nullable
as bool,isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,isLoadingMore: null == isLoadingMore ? _self.isLoadingMore : isLoadingMore // ignore: cast_nullable_to_non_nullable
as bool,failure: freezed == failure ? _self.failure : failure // ignore: cast_nullable_to_non_nullable
as ApiFailure?,
  ));
}
/// Create a copy of JobsListState
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


/// Adds pattern-matching-related methods to [JobsListState].
extension JobsListStatePatterns on JobsListState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _JobsListState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _JobsListState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _JobsListState value)  $default,){
final _that = this;
switch (_that) {
case _JobsListState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _JobsListState value)?  $default,){
final _that = this;
switch (_that) {
case _JobsListState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<Job> jobs,  int currentPage,  bool hasMore,  bool isLoading,  bool isLoadingMore,  ApiFailure? failure)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _JobsListState() when $default != null:
return $default(_that.jobs,_that.currentPage,_that.hasMore,_that.isLoading,_that.isLoadingMore,_that.failure);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<Job> jobs,  int currentPage,  bool hasMore,  bool isLoading,  bool isLoadingMore,  ApiFailure? failure)  $default,) {final _that = this;
switch (_that) {
case _JobsListState():
return $default(_that.jobs,_that.currentPage,_that.hasMore,_that.isLoading,_that.isLoadingMore,_that.failure);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<Job> jobs,  int currentPage,  bool hasMore,  bool isLoading,  bool isLoadingMore,  ApiFailure? failure)?  $default,) {final _that = this;
switch (_that) {
case _JobsListState() when $default != null:
return $default(_that.jobs,_that.currentPage,_that.hasMore,_that.isLoading,_that.isLoadingMore,_that.failure);case _:
  return null;

}
}

}

/// @nodoc


class _JobsListState implements JobsListState {
  const _JobsListState({required final  List<Job> jobs, required this.currentPage, required this.hasMore, required this.isLoading, required this.isLoadingMore, this.failure}): _jobs = jobs;
  

 final  List<Job> _jobs;
@override List<Job> get jobs {
  if (_jobs is EqualUnmodifiableListView) return _jobs;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_jobs);
}

@override final  int currentPage;
@override final  bool hasMore;
@override final  bool isLoading;
@override final  bool isLoadingMore;
@override final  ApiFailure? failure;

/// Create a copy of JobsListState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$JobsListStateCopyWith<_JobsListState> get copyWith => __$JobsListStateCopyWithImpl<_JobsListState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _JobsListState&&const DeepCollectionEquality().equals(other._jobs, _jobs)&&(identical(other.currentPage, currentPage) || other.currentPage == currentPage)&&(identical(other.hasMore, hasMore) || other.hasMore == hasMore)&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.isLoadingMore, isLoadingMore) || other.isLoadingMore == isLoadingMore)&&(identical(other.failure, failure) || other.failure == failure));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_jobs),currentPage,hasMore,isLoading,isLoadingMore,failure);

@override
String toString() {
  return 'JobsListState(jobs: $jobs, currentPage: $currentPage, hasMore: $hasMore, isLoading: $isLoading, isLoadingMore: $isLoadingMore, failure: $failure)';
}


}

/// @nodoc
abstract mixin class _$JobsListStateCopyWith<$Res> implements $JobsListStateCopyWith<$Res> {
  factory _$JobsListStateCopyWith(_JobsListState value, $Res Function(_JobsListState) _then) = __$JobsListStateCopyWithImpl;
@override @useResult
$Res call({
 List<Job> jobs, int currentPage, bool hasMore, bool isLoading, bool isLoadingMore, ApiFailure? failure
});


@override $ApiFailureCopyWith<$Res>? get failure;

}
/// @nodoc
class __$JobsListStateCopyWithImpl<$Res>
    implements _$JobsListStateCopyWith<$Res> {
  __$JobsListStateCopyWithImpl(this._self, this._then);

  final _JobsListState _self;
  final $Res Function(_JobsListState) _then;

/// Create a copy of JobsListState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? jobs = null,Object? currentPage = null,Object? hasMore = null,Object? isLoading = null,Object? isLoadingMore = null,Object? failure = freezed,}) {
  return _then(_JobsListState(
jobs: null == jobs ? _self._jobs : jobs // ignore: cast_nullable_to_non_nullable
as List<Job>,currentPage: null == currentPage ? _self.currentPage : currentPage // ignore: cast_nullable_to_non_nullable
as int,hasMore: null == hasMore ? _self.hasMore : hasMore // ignore: cast_nullable_to_non_nullable
as bool,isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,isLoadingMore: null == isLoadingMore ? _self.isLoadingMore : isLoadingMore // ignore: cast_nullable_to_non_nullable
as bool,failure: freezed == failure ? _self.failure : failure // ignore: cast_nullable_to_non_nullable
as ApiFailure?,
  ));
}

/// Create a copy of JobsListState
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
