// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_activity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$UserActivity {

 UserProfile get profile; List<ApplicationEntry> get applications;
/// Create a copy of UserActivity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UserActivityCopyWith<UserActivity> get copyWith => _$UserActivityCopyWithImpl<UserActivity>(this as UserActivity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UserActivity&&(identical(other.profile, profile) || other.profile == profile)&&const DeepCollectionEquality().equals(other.applications, applications));
}


@override
int get hashCode => Object.hash(runtimeType,profile,const DeepCollectionEquality().hash(applications));

@override
String toString() {
  return 'UserActivity(profile: $profile, applications: $applications)';
}


}

/// @nodoc
abstract mixin class $UserActivityCopyWith<$Res>  {
  factory $UserActivityCopyWith(UserActivity value, $Res Function(UserActivity) _then) = _$UserActivityCopyWithImpl;
@useResult
$Res call({
 UserProfile profile, List<ApplicationEntry> applications
});


$UserProfileCopyWith<$Res> get profile;

}
/// @nodoc
class _$UserActivityCopyWithImpl<$Res>
    implements $UserActivityCopyWith<$Res> {
  _$UserActivityCopyWithImpl(this._self, this._then);

  final UserActivity _self;
  final $Res Function(UserActivity) _then;

/// Create a copy of UserActivity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? profile = null,Object? applications = null,}) {
  return _then(_self.copyWith(
profile: null == profile ? _self.profile : profile // ignore: cast_nullable_to_non_nullable
as UserProfile,applications: null == applications ? _self.applications : applications // ignore: cast_nullable_to_non_nullable
as List<ApplicationEntry>,
  ));
}
/// Create a copy of UserActivity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserProfileCopyWith<$Res> get profile {
  
  return $UserProfileCopyWith<$Res>(_self.profile, (value) {
    return _then(_self.copyWith(profile: value));
  });
}
}


/// Adds pattern-matching-related methods to [UserActivity].
extension UserActivityPatterns on UserActivity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _UserActivity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UserActivity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _UserActivity value)  $default,){
final _that = this;
switch (_that) {
case _UserActivity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _UserActivity value)?  $default,){
final _that = this;
switch (_that) {
case _UserActivity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( UserProfile profile,  List<ApplicationEntry> applications)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UserActivity() when $default != null:
return $default(_that.profile,_that.applications);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( UserProfile profile,  List<ApplicationEntry> applications)  $default,) {final _that = this;
switch (_that) {
case _UserActivity():
return $default(_that.profile,_that.applications);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( UserProfile profile,  List<ApplicationEntry> applications)?  $default,) {final _that = this;
switch (_that) {
case _UserActivity() when $default != null:
return $default(_that.profile,_that.applications);case _:
  return null;

}
}

}

/// @nodoc


class _UserActivity implements UserActivity {
  const _UserActivity({required this.profile, required final  List<ApplicationEntry> applications}): _applications = applications;
  

@override final  UserProfile profile;
 final  List<ApplicationEntry> _applications;
@override List<ApplicationEntry> get applications {
  if (_applications is EqualUnmodifiableListView) return _applications;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_applications);
}


/// Create a copy of UserActivity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UserActivityCopyWith<_UserActivity> get copyWith => __$UserActivityCopyWithImpl<_UserActivity>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UserActivity&&(identical(other.profile, profile) || other.profile == profile)&&const DeepCollectionEquality().equals(other._applications, _applications));
}


@override
int get hashCode => Object.hash(runtimeType,profile,const DeepCollectionEquality().hash(_applications));

@override
String toString() {
  return 'UserActivity(profile: $profile, applications: $applications)';
}


}

/// @nodoc
abstract mixin class _$UserActivityCopyWith<$Res> implements $UserActivityCopyWith<$Res> {
  factory _$UserActivityCopyWith(_UserActivity value, $Res Function(_UserActivity) _then) = __$UserActivityCopyWithImpl;
@override @useResult
$Res call({
 UserProfile profile, List<ApplicationEntry> applications
});


@override $UserProfileCopyWith<$Res> get profile;

}
/// @nodoc
class __$UserActivityCopyWithImpl<$Res>
    implements _$UserActivityCopyWith<$Res> {
  __$UserActivityCopyWithImpl(this._self, this._then);

  final _UserActivity _self;
  final $Res Function(_UserActivity) _then;

/// Create a copy of UserActivity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? profile = null,Object? applications = null,}) {
  return _then(_UserActivity(
profile: null == profile ? _self.profile : profile // ignore: cast_nullable_to_non_nullable
as UserProfile,applications: null == applications ? _self._applications : applications // ignore: cast_nullable_to_non_nullable
as List<ApplicationEntry>,
  ));
}

/// Create a copy of UserActivity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserProfileCopyWith<$Res> get profile {
  
  return $UserProfileCopyWith<$Res>(_self.profile, (value) {
    return _then(_self.copyWith(profile: value));
  });
}
}

/// @nodoc
mixin _$ApplicationEntry {

 String get id; String get status; DateTime get appliedAt; Job? get job;
/// Create a copy of ApplicationEntry
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ApplicationEntryCopyWith<ApplicationEntry> get copyWith => _$ApplicationEntryCopyWithImpl<ApplicationEntry>(this as ApplicationEntry, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ApplicationEntry&&(identical(other.id, id) || other.id == id)&&(identical(other.status, status) || other.status == status)&&(identical(other.appliedAt, appliedAt) || other.appliedAt == appliedAt)&&(identical(other.job, job) || other.job == job));
}


@override
int get hashCode => Object.hash(runtimeType,id,status,appliedAt,job);

@override
String toString() {
  return 'ApplicationEntry(id: $id, status: $status, appliedAt: $appliedAt, job: $job)';
}


}

/// @nodoc
abstract mixin class $ApplicationEntryCopyWith<$Res>  {
  factory $ApplicationEntryCopyWith(ApplicationEntry value, $Res Function(ApplicationEntry) _then) = _$ApplicationEntryCopyWithImpl;
@useResult
$Res call({
 String id, String status, DateTime appliedAt, Job? job
});


$JobCopyWith<$Res>? get job;

}
/// @nodoc
class _$ApplicationEntryCopyWithImpl<$Res>
    implements $ApplicationEntryCopyWith<$Res> {
  _$ApplicationEntryCopyWithImpl(this._self, this._then);

  final ApplicationEntry _self;
  final $Res Function(ApplicationEntry) _then;

/// Create a copy of ApplicationEntry
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? status = null,Object? appliedAt = null,Object? job = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,appliedAt: null == appliedAt ? _self.appliedAt : appliedAt // ignore: cast_nullable_to_non_nullable
as DateTime,job: freezed == job ? _self.job : job // ignore: cast_nullable_to_non_nullable
as Job?,
  ));
}
/// Create a copy of ApplicationEntry
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
}
}


/// Adds pattern-matching-related methods to [ApplicationEntry].
extension ApplicationEntryPatterns on ApplicationEntry {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ApplicationEntry value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ApplicationEntry() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ApplicationEntry value)  $default,){
final _that = this;
switch (_that) {
case _ApplicationEntry():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ApplicationEntry value)?  $default,){
final _that = this;
switch (_that) {
case _ApplicationEntry() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String status,  DateTime appliedAt,  Job? job)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ApplicationEntry() when $default != null:
return $default(_that.id,_that.status,_that.appliedAt,_that.job);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String status,  DateTime appliedAt,  Job? job)  $default,) {final _that = this;
switch (_that) {
case _ApplicationEntry():
return $default(_that.id,_that.status,_that.appliedAt,_that.job);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String status,  DateTime appliedAt,  Job? job)?  $default,) {final _that = this;
switch (_that) {
case _ApplicationEntry() when $default != null:
return $default(_that.id,_that.status,_that.appliedAt,_that.job);case _:
  return null;

}
}

}

/// @nodoc


class _ApplicationEntry implements ApplicationEntry {
  const _ApplicationEntry({required this.id, required this.status, required this.appliedAt, this.job});
  

@override final  String id;
@override final  String status;
@override final  DateTime appliedAt;
@override final  Job? job;

/// Create a copy of ApplicationEntry
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ApplicationEntryCopyWith<_ApplicationEntry> get copyWith => __$ApplicationEntryCopyWithImpl<_ApplicationEntry>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ApplicationEntry&&(identical(other.id, id) || other.id == id)&&(identical(other.status, status) || other.status == status)&&(identical(other.appliedAt, appliedAt) || other.appliedAt == appliedAt)&&(identical(other.job, job) || other.job == job));
}


@override
int get hashCode => Object.hash(runtimeType,id,status,appliedAt,job);

@override
String toString() {
  return 'ApplicationEntry(id: $id, status: $status, appliedAt: $appliedAt, job: $job)';
}


}

/// @nodoc
abstract mixin class _$ApplicationEntryCopyWith<$Res> implements $ApplicationEntryCopyWith<$Res> {
  factory _$ApplicationEntryCopyWith(_ApplicationEntry value, $Res Function(_ApplicationEntry) _then) = __$ApplicationEntryCopyWithImpl;
@override @useResult
$Res call({
 String id, String status, DateTime appliedAt, Job? job
});


@override $JobCopyWith<$Res>? get job;

}
/// @nodoc
class __$ApplicationEntryCopyWithImpl<$Res>
    implements _$ApplicationEntryCopyWith<$Res> {
  __$ApplicationEntryCopyWithImpl(this._self, this._then);

  final _ApplicationEntry _self;
  final $Res Function(_ApplicationEntry) _then;

/// Create a copy of ApplicationEntry
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? status = null,Object? appliedAt = null,Object? job = freezed,}) {
  return _then(_ApplicationEntry(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,appliedAt: null == appliedAt ? _self.appliedAt : appliedAt // ignore: cast_nullable_to_non_nullable
as DateTime,job: freezed == job ? _self.job : job // ignore: cast_nullable_to_non_nullable
as Job?,
  ));
}

/// Create a copy of ApplicationEntry
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
}
}

// dart format on
