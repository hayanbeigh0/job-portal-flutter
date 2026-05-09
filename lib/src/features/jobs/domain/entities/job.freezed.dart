// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'job.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$Job {

 String get id; String get title; String get company; String get description; String get location; String get salary; List<String> get requirements; DateTime get postedDate; int get applicantsCount; String get status; bool get hasApplied;
/// Create a copy of Job
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$JobCopyWith<Job> get copyWith => _$JobCopyWithImpl<Job>(this as Job, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Job&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.company, company) || other.company == company)&&(identical(other.description, description) || other.description == description)&&(identical(other.location, location) || other.location == location)&&(identical(other.salary, salary) || other.salary == salary)&&const DeepCollectionEquality().equals(other.requirements, requirements)&&(identical(other.postedDate, postedDate) || other.postedDate == postedDate)&&(identical(other.applicantsCount, applicantsCount) || other.applicantsCount == applicantsCount)&&(identical(other.status, status) || other.status == status)&&(identical(other.hasApplied, hasApplied) || other.hasApplied == hasApplied));
}


@override
int get hashCode => Object.hash(runtimeType,id,title,company,description,location,salary,const DeepCollectionEquality().hash(requirements),postedDate,applicantsCount,status,hasApplied);

@override
String toString() {
  return 'Job(id: $id, title: $title, company: $company, description: $description, location: $location, salary: $salary, requirements: $requirements, postedDate: $postedDate, applicantsCount: $applicantsCount, status: $status, hasApplied: $hasApplied)';
}


}

/// @nodoc
abstract mixin class $JobCopyWith<$Res>  {
  factory $JobCopyWith(Job value, $Res Function(Job) _then) = _$JobCopyWithImpl;
@useResult
$Res call({
 String id, String title, String company, String description, String location, String salary, List<String> requirements, DateTime postedDate, int applicantsCount, String status, bool hasApplied
});




}
/// @nodoc
class _$JobCopyWithImpl<$Res>
    implements $JobCopyWith<$Res> {
  _$JobCopyWithImpl(this._self, this._then);

  final Job _self;
  final $Res Function(Job) _then;

/// Create a copy of Job
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? title = null,Object? company = null,Object? description = null,Object? location = null,Object? salary = null,Object? requirements = null,Object? postedDate = null,Object? applicantsCount = null,Object? status = null,Object? hasApplied = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,company: null == company ? _self.company : company // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,location: null == location ? _self.location : location // ignore: cast_nullable_to_non_nullable
as String,salary: null == salary ? _self.salary : salary // ignore: cast_nullable_to_non_nullable
as String,requirements: null == requirements ? _self.requirements : requirements // ignore: cast_nullable_to_non_nullable
as List<String>,postedDate: null == postedDate ? _self.postedDate : postedDate // ignore: cast_nullable_to_non_nullable
as DateTime,applicantsCount: null == applicantsCount ? _self.applicantsCount : applicantsCount // ignore: cast_nullable_to_non_nullable
as int,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,hasApplied: null == hasApplied ? _self.hasApplied : hasApplied // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [Job].
extension JobPatterns on Job {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Job value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Job() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Job value)  $default,){
final _that = this;
switch (_that) {
case _Job():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Job value)?  $default,){
final _that = this;
switch (_that) {
case _Job() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String title,  String company,  String description,  String location,  String salary,  List<String> requirements,  DateTime postedDate,  int applicantsCount,  String status,  bool hasApplied)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Job() when $default != null:
return $default(_that.id,_that.title,_that.company,_that.description,_that.location,_that.salary,_that.requirements,_that.postedDate,_that.applicantsCount,_that.status,_that.hasApplied);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String title,  String company,  String description,  String location,  String salary,  List<String> requirements,  DateTime postedDate,  int applicantsCount,  String status,  bool hasApplied)  $default,) {final _that = this;
switch (_that) {
case _Job():
return $default(_that.id,_that.title,_that.company,_that.description,_that.location,_that.salary,_that.requirements,_that.postedDate,_that.applicantsCount,_that.status,_that.hasApplied);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String title,  String company,  String description,  String location,  String salary,  List<String> requirements,  DateTime postedDate,  int applicantsCount,  String status,  bool hasApplied)?  $default,) {final _that = this;
switch (_that) {
case _Job() when $default != null:
return $default(_that.id,_that.title,_that.company,_that.description,_that.location,_that.salary,_that.requirements,_that.postedDate,_that.applicantsCount,_that.status,_that.hasApplied);case _:
  return null;

}
}

}

/// @nodoc


class _Job implements Job {
  const _Job({required this.id, required this.title, required this.company, required this.description, required this.location, required this.salary, required final  List<String> requirements, required this.postedDate, required this.applicantsCount, required this.status, this.hasApplied = false}): _requirements = requirements;
  

@override final  String id;
@override final  String title;
@override final  String company;
@override final  String description;
@override final  String location;
@override final  String salary;
 final  List<String> _requirements;
@override List<String> get requirements {
  if (_requirements is EqualUnmodifiableListView) return _requirements;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_requirements);
}

@override final  DateTime postedDate;
@override final  int applicantsCount;
@override final  String status;
@override@JsonKey() final  bool hasApplied;

/// Create a copy of Job
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$JobCopyWith<_Job> get copyWith => __$JobCopyWithImpl<_Job>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Job&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.company, company) || other.company == company)&&(identical(other.description, description) || other.description == description)&&(identical(other.location, location) || other.location == location)&&(identical(other.salary, salary) || other.salary == salary)&&const DeepCollectionEquality().equals(other._requirements, _requirements)&&(identical(other.postedDate, postedDate) || other.postedDate == postedDate)&&(identical(other.applicantsCount, applicantsCount) || other.applicantsCount == applicantsCount)&&(identical(other.status, status) || other.status == status)&&(identical(other.hasApplied, hasApplied) || other.hasApplied == hasApplied));
}


@override
int get hashCode => Object.hash(runtimeType,id,title,company,description,location,salary,const DeepCollectionEquality().hash(_requirements),postedDate,applicantsCount,status,hasApplied);

@override
String toString() {
  return 'Job(id: $id, title: $title, company: $company, description: $description, location: $location, salary: $salary, requirements: $requirements, postedDate: $postedDate, applicantsCount: $applicantsCount, status: $status, hasApplied: $hasApplied)';
}


}

/// @nodoc
abstract mixin class _$JobCopyWith<$Res> implements $JobCopyWith<$Res> {
  factory _$JobCopyWith(_Job value, $Res Function(_Job) _then) = __$JobCopyWithImpl;
@override @useResult
$Res call({
 String id, String title, String company, String description, String location, String salary, List<String> requirements, DateTime postedDate, int applicantsCount, String status, bool hasApplied
});




}
/// @nodoc
class __$JobCopyWithImpl<$Res>
    implements _$JobCopyWith<$Res> {
  __$JobCopyWithImpl(this._self, this._then);

  final _Job _self;
  final $Res Function(_Job) _then;

/// Create a copy of Job
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? title = null,Object? company = null,Object? description = null,Object? location = null,Object? salary = null,Object? requirements = null,Object? postedDate = null,Object? applicantsCount = null,Object? status = null,Object? hasApplied = null,}) {
  return _then(_Job(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,company: null == company ? _self.company : company // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,location: null == location ? _self.location : location // ignore: cast_nullable_to_non_nullable
as String,salary: null == salary ? _self.salary : salary // ignore: cast_nullable_to_non_nullable
as String,requirements: null == requirements ? _self._requirements : requirements // ignore: cast_nullable_to_non_nullable
as List<String>,postedDate: null == postedDate ? _self.postedDate : postedDate // ignore: cast_nullable_to_non_nullable
as DateTime,applicantsCount: null == applicantsCount ? _self.applicantsCount : applicantsCount // ignore: cast_nullable_to_non_nullable
as int,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,hasApplied: null == hasApplied ? _self.hasApplied : hasApplied // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
