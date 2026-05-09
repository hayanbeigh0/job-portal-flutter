// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'profile_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ProfileEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProfileEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ProfileEvent()';
}


}

/// @nodoc
class $ProfileEventCopyWith<$Res>  {
$ProfileEventCopyWith(ProfileEvent _, $Res Function(ProfileEvent) __);
}


/// Adds pattern-matching-related methods to [ProfileEvent].
extension ProfileEventPatterns on ProfileEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _NameChanged value)?  nameChanged,TResult Function( _SkillsChanged value)?  skillsChanged,TResult Function( _LocationChanged value)?  locationChanged,TResult Function( _LoadProfile value)?  loadProfile,TResult Function( _SubmitProfile value)?  submitProfile,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _NameChanged() when nameChanged != null:
return nameChanged(_that);case _SkillsChanged() when skillsChanged != null:
return skillsChanged(_that);case _LocationChanged() when locationChanged != null:
return locationChanged(_that);case _LoadProfile() when loadProfile != null:
return loadProfile(_that);case _SubmitProfile() when submitProfile != null:
return submitProfile(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _NameChanged value)  nameChanged,required TResult Function( _SkillsChanged value)  skillsChanged,required TResult Function( _LocationChanged value)  locationChanged,required TResult Function( _LoadProfile value)  loadProfile,required TResult Function( _SubmitProfile value)  submitProfile,}){
final _that = this;
switch (_that) {
case _NameChanged():
return nameChanged(_that);case _SkillsChanged():
return skillsChanged(_that);case _LocationChanged():
return locationChanged(_that);case _LoadProfile():
return loadProfile(_that);case _SubmitProfile():
return submitProfile(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _NameChanged value)?  nameChanged,TResult? Function( _SkillsChanged value)?  skillsChanged,TResult? Function( _LocationChanged value)?  locationChanged,TResult? Function( _LoadProfile value)?  loadProfile,TResult? Function( _SubmitProfile value)?  submitProfile,}){
final _that = this;
switch (_that) {
case _NameChanged() when nameChanged != null:
return nameChanged(_that);case _SkillsChanged() when skillsChanged != null:
return skillsChanged(_that);case _LocationChanged() when locationChanged != null:
return locationChanged(_that);case _LoadProfile() when loadProfile != null:
return loadProfile(_that);case _SubmitProfile() when submitProfile != null:
return submitProfile(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( String name)?  nameChanged,TResult Function( List<String> skills)?  skillsChanged,TResult Function( String location)?  locationChanged,TResult Function()?  loadProfile,TResult Function()?  submitProfile,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _NameChanged() when nameChanged != null:
return nameChanged(_that.name);case _SkillsChanged() when skillsChanged != null:
return skillsChanged(_that.skills);case _LocationChanged() when locationChanged != null:
return locationChanged(_that.location);case _LoadProfile() when loadProfile != null:
return loadProfile();case _SubmitProfile() when submitProfile != null:
return submitProfile();case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( String name)  nameChanged,required TResult Function( List<String> skills)  skillsChanged,required TResult Function( String location)  locationChanged,required TResult Function()  loadProfile,required TResult Function()  submitProfile,}) {final _that = this;
switch (_that) {
case _NameChanged():
return nameChanged(_that.name);case _SkillsChanged():
return skillsChanged(_that.skills);case _LocationChanged():
return locationChanged(_that.location);case _LoadProfile():
return loadProfile();case _SubmitProfile():
return submitProfile();}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( String name)?  nameChanged,TResult? Function( List<String> skills)?  skillsChanged,TResult? Function( String location)?  locationChanged,TResult? Function()?  loadProfile,TResult? Function()?  submitProfile,}) {final _that = this;
switch (_that) {
case _NameChanged() when nameChanged != null:
return nameChanged(_that.name);case _SkillsChanged() when skillsChanged != null:
return skillsChanged(_that.skills);case _LocationChanged() when locationChanged != null:
return locationChanged(_that.location);case _LoadProfile() when loadProfile != null:
return loadProfile();case _SubmitProfile() when submitProfile != null:
return submitProfile();case _:
  return null;

}
}

}

/// @nodoc


class _NameChanged implements ProfileEvent {
  const _NameChanged(this.name);
  

 final  String name;

/// Create a copy of ProfileEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$NameChangedCopyWith<_NameChanged> get copyWith => __$NameChangedCopyWithImpl<_NameChanged>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _NameChanged&&(identical(other.name, name) || other.name == name));
}


@override
int get hashCode => Object.hash(runtimeType,name);

@override
String toString() {
  return 'ProfileEvent.nameChanged(name: $name)';
}


}

/// @nodoc
abstract mixin class _$NameChangedCopyWith<$Res> implements $ProfileEventCopyWith<$Res> {
  factory _$NameChangedCopyWith(_NameChanged value, $Res Function(_NameChanged) _then) = __$NameChangedCopyWithImpl;
@useResult
$Res call({
 String name
});




}
/// @nodoc
class __$NameChangedCopyWithImpl<$Res>
    implements _$NameChangedCopyWith<$Res> {
  __$NameChangedCopyWithImpl(this._self, this._then);

  final _NameChanged _self;
  final $Res Function(_NameChanged) _then;

/// Create a copy of ProfileEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? name = null,}) {
  return _then(_NameChanged(
null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _SkillsChanged implements ProfileEvent {
  const _SkillsChanged(final  List<String> skills): _skills = skills;
  

 final  List<String> _skills;
 List<String> get skills {
  if (_skills is EqualUnmodifiableListView) return _skills;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_skills);
}


/// Create a copy of ProfileEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SkillsChangedCopyWith<_SkillsChanged> get copyWith => __$SkillsChangedCopyWithImpl<_SkillsChanged>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SkillsChanged&&const DeepCollectionEquality().equals(other._skills, _skills));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_skills));

@override
String toString() {
  return 'ProfileEvent.skillsChanged(skills: $skills)';
}


}

/// @nodoc
abstract mixin class _$SkillsChangedCopyWith<$Res> implements $ProfileEventCopyWith<$Res> {
  factory _$SkillsChangedCopyWith(_SkillsChanged value, $Res Function(_SkillsChanged) _then) = __$SkillsChangedCopyWithImpl;
@useResult
$Res call({
 List<String> skills
});




}
/// @nodoc
class __$SkillsChangedCopyWithImpl<$Res>
    implements _$SkillsChangedCopyWith<$Res> {
  __$SkillsChangedCopyWithImpl(this._self, this._then);

  final _SkillsChanged _self;
  final $Res Function(_SkillsChanged) _then;

/// Create a copy of ProfileEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? skills = null,}) {
  return _then(_SkillsChanged(
null == skills ? _self._skills : skills // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}


}

/// @nodoc


class _LocationChanged implements ProfileEvent {
  const _LocationChanged(this.location);
  

 final  String location;

/// Create a copy of ProfileEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LocationChangedCopyWith<_LocationChanged> get copyWith => __$LocationChangedCopyWithImpl<_LocationChanged>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LocationChanged&&(identical(other.location, location) || other.location == location));
}


@override
int get hashCode => Object.hash(runtimeType,location);

@override
String toString() {
  return 'ProfileEvent.locationChanged(location: $location)';
}


}

/// @nodoc
abstract mixin class _$LocationChangedCopyWith<$Res> implements $ProfileEventCopyWith<$Res> {
  factory _$LocationChangedCopyWith(_LocationChanged value, $Res Function(_LocationChanged) _then) = __$LocationChangedCopyWithImpl;
@useResult
$Res call({
 String location
});




}
/// @nodoc
class __$LocationChangedCopyWithImpl<$Res>
    implements _$LocationChangedCopyWith<$Res> {
  __$LocationChangedCopyWithImpl(this._self, this._then);

  final _LocationChanged _self;
  final $Res Function(_LocationChanged) _then;

/// Create a copy of ProfileEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? location = null,}) {
  return _then(_LocationChanged(
null == location ? _self.location : location // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _LoadProfile implements ProfileEvent {
  const _LoadProfile();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LoadProfile);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ProfileEvent.loadProfile()';
}


}




/// @nodoc


class _SubmitProfile implements ProfileEvent {
  const _SubmitProfile();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SubmitProfile);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ProfileEvent.submitProfile()';
}


}




/// @nodoc
mixin _$ProfileState {

 String get name; List<String> get skills; String get location; bool get isLoading; bool get isSubmitting; bool get isSuccess; UserProfile? get profile; ApiFailure? get failure;
/// Create a copy of ProfileState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProfileStateCopyWith<ProfileState> get copyWith => _$ProfileStateCopyWithImpl<ProfileState>(this as ProfileState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProfileState&&(identical(other.name, name) || other.name == name)&&const DeepCollectionEquality().equals(other.skills, skills)&&(identical(other.location, location) || other.location == location)&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.isSubmitting, isSubmitting) || other.isSubmitting == isSubmitting)&&(identical(other.isSuccess, isSuccess) || other.isSuccess == isSuccess)&&(identical(other.profile, profile) || other.profile == profile)&&(identical(other.failure, failure) || other.failure == failure));
}


@override
int get hashCode => Object.hash(runtimeType,name,const DeepCollectionEquality().hash(skills),location,isLoading,isSubmitting,isSuccess,profile,failure);

@override
String toString() {
  return 'ProfileState(name: $name, skills: $skills, location: $location, isLoading: $isLoading, isSubmitting: $isSubmitting, isSuccess: $isSuccess, profile: $profile, failure: $failure)';
}


}

/// @nodoc
abstract mixin class $ProfileStateCopyWith<$Res>  {
  factory $ProfileStateCopyWith(ProfileState value, $Res Function(ProfileState) _then) = _$ProfileStateCopyWithImpl;
@useResult
$Res call({
 String name, List<String> skills, String location, bool isLoading, bool isSubmitting, bool isSuccess, UserProfile? profile, ApiFailure? failure
});


$UserProfileCopyWith<$Res>? get profile;$ApiFailureCopyWith<$Res>? get failure;

}
/// @nodoc
class _$ProfileStateCopyWithImpl<$Res>
    implements $ProfileStateCopyWith<$Res> {
  _$ProfileStateCopyWithImpl(this._self, this._then);

  final ProfileState _self;
  final $Res Function(ProfileState) _then;

/// Create a copy of ProfileState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = null,Object? skills = null,Object? location = null,Object? isLoading = null,Object? isSubmitting = null,Object? isSuccess = null,Object? profile = freezed,Object? failure = freezed,}) {
  return _then(_self.copyWith(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,skills: null == skills ? _self.skills : skills // ignore: cast_nullable_to_non_nullable
as List<String>,location: null == location ? _self.location : location // ignore: cast_nullable_to_non_nullable
as String,isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,isSubmitting: null == isSubmitting ? _self.isSubmitting : isSubmitting // ignore: cast_nullable_to_non_nullable
as bool,isSuccess: null == isSuccess ? _self.isSuccess : isSuccess // ignore: cast_nullable_to_non_nullable
as bool,profile: freezed == profile ? _self.profile : profile // ignore: cast_nullable_to_non_nullable
as UserProfile?,failure: freezed == failure ? _self.failure : failure // ignore: cast_nullable_to_non_nullable
as ApiFailure?,
  ));
}
/// Create a copy of ProfileState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserProfileCopyWith<$Res>? get profile {
    if (_self.profile == null) {
    return null;
  }

  return $UserProfileCopyWith<$Res>(_self.profile!, (value) {
    return _then(_self.copyWith(profile: value));
  });
}/// Create a copy of ProfileState
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


/// Adds pattern-matching-related methods to [ProfileState].
extension ProfileStatePatterns on ProfileState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ProfileState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ProfileState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ProfileState value)  $default,){
final _that = this;
switch (_that) {
case _ProfileState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ProfileState value)?  $default,){
final _that = this;
switch (_that) {
case _ProfileState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String name,  List<String> skills,  String location,  bool isLoading,  bool isSubmitting,  bool isSuccess,  UserProfile? profile,  ApiFailure? failure)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ProfileState() when $default != null:
return $default(_that.name,_that.skills,_that.location,_that.isLoading,_that.isSubmitting,_that.isSuccess,_that.profile,_that.failure);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String name,  List<String> skills,  String location,  bool isLoading,  bool isSubmitting,  bool isSuccess,  UserProfile? profile,  ApiFailure? failure)  $default,) {final _that = this;
switch (_that) {
case _ProfileState():
return $default(_that.name,_that.skills,_that.location,_that.isLoading,_that.isSubmitting,_that.isSuccess,_that.profile,_that.failure);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String name,  List<String> skills,  String location,  bool isLoading,  bool isSubmitting,  bool isSuccess,  UserProfile? profile,  ApiFailure? failure)?  $default,) {final _that = this;
switch (_that) {
case _ProfileState() when $default != null:
return $default(_that.name,_that.skills,_that.location,_that.isLoading,_that.isSubmitting,_that.isSuccess,_that.profile,_that.failure);case _:
  return null;

}
}

}

/// @nodoc


class _ProfileState implements ProfileState {
  const _ProfileState({required this.name, required final  List<String> skills, required this.location, required this.isLoading, required this.isSubmitting, required this.isSuccess, this.profile, this.failure}): _skills = skills;
  

@override final  String name;
 final  List<String> _skills;
@override List<String> get skills {
  if (_skills is EqualUnmodifiableListView) return _skills;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_skills);
}

@override final  String location;
@override final  bool isLoading;
@override final  bool isSubmitting;
@override final  bool isSuccess;
@override final  UserProfile? profile;
@override final  ApiFailure? failure;

/// Create a copy of ProfileState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ProfileStateCopyWith<_ProfileState> get copyWith => __$ProfileStateCopyWithImpl<_ProfileState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ProfileState&&(identical(other.name, name) || other.name == name)&&const DeepCollectionEquality().equals(other._skills, _skills)&&(identical(other.location, location) || other.location == location)&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.isSubmitting, isSubmitting) || other.isSubmitting == isSubmitting)&&(identical(other.isSuccess, isSuccess) || other.isSuccess == isSuccess)&&(identical(other.profile, profile) || other.profile == profile)&&(identical(other.failure, failure) || other.failure == failure));
}


@override
int get hashCode => Object.hash(runtimeType,name,const DeepCollectionEquality().hash(_skills),location,isLoading,isSubmitting,isSuccess,profile,failure);

@override
String toString() {
  return 'ProfileState(name: $name, skills: $skills, location: $location, isLoading: $isLoading, isSubmitting: $isSubmitting, isSuccess: $isSuccess, profile: $profile, failure: $failure)';
}


}

/// @nodoc
abstract mixin class _$ProfileStateCopyWith<$Res> implements $ProfileStateCopyWith<$Res> {
  factory _$ProfileStateCopyWith(_ProfileState value, $Res Function(_ProfileState) _then) = __$ProfileStateCopyWithImpl;
@override @useResult
$Res call({
 String name, List<String> skills, String location, bool isLoading, bool isSubmitting, bool isSuccess, UserProfile? profile, ApiFailure? failure
});


@override $UserProfileCopyWith<$Res>? get profile;@override $ApiFailureCopyWith<$Res>? get failure;

}
/// @nodoc
class __$ProfileStateCopyWithImpl<$Res>
    implements _$ProfileStateCopyWith<$Res> {
  __$ProfileStateCopyWithImpl(this._self, this._then);

  final _ProfileState _self;
  final $Res Function(_ProfileState) _then;

/// Create a copy of ProfileState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = null,Object? skills = null,Object? location = null,Object? isLoading = null,Object? isSubmitting = null,Object? isSuccess = null,Object? profile = freezed,Object? failure = freezed,}) {
  return _then(_ProfileState(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,skills: null == skills ? _self._skills : skills // ignore: cast_nullable_to_non_nullable
as List<String>,location: null == location ? _self.location : location // ignore: cast_nullable_to_non_nullable
as String,isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,isSubmitting: null == isSubmitting ? _self.isSubmitting : isSubmitting // ignore: cast_nullable_to_non_nullable
as bool,isSuccess: null == isSuccess ? _self.isSuccess : isSuccess // ignore: cast_nullable_to_non_nullable
as bool,profile: freezed == profile ? _self.profile : profile // ignore: cast_nullable_to_non_nullable
as UserProfile?,failure: freezed == failure ? _self.failure : failure // ignore: cast_nullable_to_non_nullable
as ApiFailure?,
  ));
}

/// Create a copy of ProfileState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserProfileCopyWith<$Res>? get profile {
    if (_self.profile == null) {
    return null;
  }

  return $UserProfileCopyWith<$Res>(_self.profile!, (value) {
    return _then(_self.copyWith(profile: value));
  });
}/// Create a copy of ProfileState
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
