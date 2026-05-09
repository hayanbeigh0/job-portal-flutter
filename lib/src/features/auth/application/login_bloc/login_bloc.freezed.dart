// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'login_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$LoginEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoginEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'LoginEvent()';
}


}

/// @nodoc
class $LoginEventCopyWith<$Res>  {
$LoginEventCopyWith(LoginEvent _, $Res Function(LoginEvent) __);
}


/// Adds pattern-matching-related methods to [LoginEvent].
extension LoginEventPatterns on LoginEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _PhoneNumberChanged value)?  phoneNumberChanged,TResult Function( _OtpChanged value)?  otpChanged,TResult Function( _SendOtpPressed value)?  sendOtpPressed,TResult Function( _VerifyOtpPressed value)?  verifyOtpPressed,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PhoneNumberChanged() when phoneNumberChanged != null:
return phoneNumberChanged(_that);case _OtpChanged() when otpChanged != null:
return otpChanged(_that);case _SendOtpPressed() when sendOtpPressed != null:
return sendOtpPressed(_that);case _VerifyOtpPressed() when verifyOtpPressed != null:
return verifyOtpPressed(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _PhoneNumberChanged value)  phoneNumberChanged,required TResult Function( _OtpChanged value)  otpChanged,required TResult Function( _SendOtpPressed value)  sendOtpPressed,required TResult Function( _VerifyOtpPressed value)  verifyOtpPressed,}){
final _that = this;
switch (_that) {
case _PhoneNumberChanged():
return phoneNumberChanged(_that);case _OtpChanged():
return otpChanged(_that);case _SendOtpPressed():
return sendOtpPressed(_that);case _VerifyOtpPressed():
return verifyOtpPressed(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _PhoneNumberChanged value)?  phoneNumberChanged,TResult? Function( _OtpChanged value)?  otpChanged,TResult? Function( _SendOtpPressed value)?  sendOtpPressed,TResult? Function( _VerifyOtpPressed value)?  verifyOtpPressed,}){
final _that = this;
switch (_that) {
case _PhoneNumberChanged() when phoneNumberChanged != null:
return phoneNumberChanged(_that);case _OtpChanged() when otpChanged != null:
return otpChanged(_that);case _SendOtpPressed() when sendOtpPressed != null:
return sendOtpPressed(_that);case _VerifyOtpPressed() when verifyOtpPressed != null:
return verifyOtpPressed(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( String phoneNumber)?  phoneNumberChanged,TResult Function( String otp)?  otpChanged,TResult Function()?  sendOtpPressed,TResult Function()?  verifyOtpPressed,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PhoneNumberChanged() when phoneNumberChanged != null:
return phoneNumberChanged(_that.phoneNumber);case _OtpChanged() when otpChanged != null:
return otpChanged(_that.otp);case _SendOtpPressed() when sendOtpPressed != null:
return sendOtpPressed();case _VerifyOtpPressed() when verifyOtpPressed != null:
return verifyOtpPressed();case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( String phoneNumber)  phoneNumberChanged,required TResult Function( String otp)  otpChanged,required TResult Function()  sendOtpPressed,required TResult Function()  verifyOtpPressed,}) {final _that = this;
switch (_that) {
case _PhoneNumberChanged():
return phoneNumberChanged(_that.phoneNumber);case _OtpChanged():
return otpChanged(_that.otp);case _SendOtpPressed():
return sendOtpPressed();case _VerifyOtpPressed():
return verifyOtpPressed();}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( String phoneNumber)?  phoneNumberChanged,TResult? Function( String otp)?  otpChanged,TResult? Function()?  sendOtpPressed,TResult? Function()?  verifyOtpPressed,}) {final _that = this;
switch (_that) {
case _PhoneNumberChanged() when phoneNumberChanged != null:
return phoneNumberChanged(_that.phoneNumber);case _OtpChanged() when otpChanged != null:
return otpChanged(_that.otp);case _SendOtpPressed() when sendOtpPressed != null:
return sendOtpPressed();case _VerifyOtpPressed() when verifyOtpPressed != null:
return verifyOtpPressed();case _:
  return null;

}
}

}

/// @nodoc


class _PhoneNumberChanged implements LoginEvent {
  const _PhoneNumberChanged(this.phoneNumber);
  

 final  String phoneNumber;

/// Create a copy of LoginEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PhoneNumberChangedCopyWith<_PhoneNumberChanged> get copyWith => __$PhoneNumberChangedCopyWithImpl<_PhoneNumberChanged>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PhoneNumberChanged&&(identical(other.phoneNumber, phoneNumber) || other.phoneNumber == phoneNumber));
}


@override
int get hashCode => Object.hash(runtimeType,phoneNumber);

@override
String toString() {
  return 'LoginEvent.phoneNumberChanged(phoneNumber: $phoneNumber)';
}


}

/// @nodoc
abstract mixin class _$PhoneNumberChangedCopyWith<$Res> implements $LoginEventCopyWith<$Res> {
  factory _$PhoneNumberChangedCopyWith(_PhoneNumberChanged value, $Res Function(_PhoneNumberChanged) _then) = __$PhoneNumberChangedCopyWithImpl;
@useResult
$Res call({
 String phoneNumber
});




}
/// @nodoc
class __$PhoneNumberChangedCopyWithImpl<$Res>
    implements _$PhoneNumberChangedCopyWith<$Res> {
  __$PhoneNumberChangedCopyWithImpl(this._self, this._then);

  final _PhoneNumberChanged _self;
  final $Res Function(_PhoneNumberChanged) _then;

/// Create a copy of LoginEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? phoneNumber = null,}) {
  return _then(_PhoneNumberChanged(
null == phoneNumber ? _self.phoneNumber : phoneNumber // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _OtpChanged implements LoginEvent {
  const _OtpChanged(this.otp);
  

 final  String otp;

/// Create a copy of LoginEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$OtpChangedCopyWith<_OtpChanged> get copyWith => __$OtpChangedCopyWithImpl<_OtpChanged>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _OtpChanged&&(identical(other.otp, otp) || other.otp == otp));
}


@override
int get hashCode => Object.hash(runtimeType,otp);

@override
String toString() {
  return 'LoginEvent.otpChanged(otp: $otp)';
}


}

/// @nodoc
abstract mixin class _$OtpChangedCopyWith<$Res> implements $LoginEventCopyWith<$Res> {
  factory _$OtpChangedCopyWith(_OtpChanged value, $Res Function(_OtpChanged) _then) = __$OtpChangedCopyWithImpl;
@useResult
$Res call({
 String otp
});




}
/// @nodoc
class __$OtpChangedCopyWithImpl<$Res>
    implements _$OtpChangedCopyWith<$Res> {
  __$OtpChangedCopyWithImpl(this._self, this._then);

  final _OtpChanged _self;
  final $Res Function(_OtpChanged) _then;

/// Create a copy of LoginEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? otp = null,}) {
  return _then(_OtpChanged(
null == otp ? _self.otp : otp // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _SendOtpPressed implements LoginEvent {
  const _SendOtpPressed();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SendOtpPressed);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'LoginEvent.sendOtpPressed()';
}


}




/// @nodoc


class _VerifyOtpPressed implements LoginEvent {
  const _VerifyOtpPressed();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _VerifyOtpPressed);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'LoginEvent.verifyOtpPressed()';
}


}




/// @nodoc
mixin _$LoginState {

 String get phoneNumber; String get otp; bool get otpSent; bool get isSubmitting; ApiFailure? get failure; AuthUser? get successUser;
/// Create a copy of LoginState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LoginStateCopyWith<LoginState> get copyWith => _$LoginStateCopyWithImpl<LoginState>(this as LoginState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoginState&&(identical(other.phoneNumber, phoneNumber) || other.phoneNumber == phoneNumber)&&(identical(other.otp, otp) || other.otp == otp)&&(identical(other.otpSent, otpSent) || other.otpSent == otpSent)&&(identical(other.isSubmitting, isSubmitting) || other.isSubmitting == isSubmitting)&&(identical(other.failure, failure) || other.failure == failure)&&(identical(other.successUser, successUser) || other.successUser == successUser));
}


@override
int get hashCode => Object.hash(runtimeType,phoneNumber,otp,otpSent,isSubmitting,failure,successUser);

@override
String toString() {
  return 'LoginState(phoneNumber: $phoneNumber, otp: $otp, otpSent: $otpSent, isSubmitting: $isSubmitting, failure: $failure, successUser: $successUser)';
}


}

/// @nodoc
abstract mixin class $LoginStateCopyWith<$Res>  {
  factory $LoginStateCopyWith(LoginState value, $Res Function(LoginState) _then) = _$LoginStateCopyWithImpl;
@useResult
$Res call({
 String phoneNumber, String otp, bool otpSent, bool isSubmitting, ApiFailure? failure, AuthUser? successUser
});


$ApiFailureCopyWith<$Res>? get failure;$AuthUserCopyWith<$Res>? get successUser;

}
/// @nodoc
class _$LoginStateCopyWithImpl<$Res>
    implements $LoginStateCopyWith<$Res> {
  _$LoginStateCopyWithImpl(this._self, this._then);

  final LoginState _self;
  final $Res Function(LoginState) _then;

/// Create a copy of LoginState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? phoneNumber = null,Object? otp = null,Object? otpSent = null,Object? isSubmitting = null,Object? failure = freezed,Object? successUser = freezed,}) {
  return _then(_self.copyWith(
phoneNumber: null == phoneNumber ? _self.phoneNumber : phoneNumber // ignore: cast_nullable_to_non_nullable
as String,otp: null == otp ? _self.otp : otp // ignore: cast_nullable_to_non_nullable
as String,otpSent: null == otpSent ? _self.otpSent : otpSent // ignore: cast_nullable_to_non_nullable
as bool,isSubmitting: null == isSubmitting ? _self.isSubmitting : isSubmitting // ignore: cast_nullable_to_non_nullable
as bool,failure: freezed == failure ? _self.failure : failure // ignore: cast_nullable_to_non_nullable
as ApiFailure?,successUser: freezed == successUser ? _self.successUser : successUser // ignore: cast_nullable_to_non_nullable
as AuthUser?,
  ));
}
/// Create a copy of LoginState
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
}/// Create a copy of LoginState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AuthUserCopyWith<$Res>? get successUser {
    if (_self.successUser == null) {
    return null;
  }

  return $AuthUserCopyWith<$Res>(_self.successUser!, (value) {
    return _then(_self.copyWith(successUser: value));
  });
}
}


/// Adds pattern-matching-related methods to [LoginState].
extension LoginStatePatterns on LoginState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _LoginState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _LoginState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _LoginState value)  $default,){
final _that = this;
switch (_that) {
case _LoginState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _LoginState value)?  $default,){
final _that = this;
switch (_that) {
case _LoginState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String phoneNumber,  String otp,  bool otpSent,  bool isSubmitting,  ApiFailure? failure,  AuthUser? successUser)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _LoginState() when $default != null:
return $default(_that.phoneNumber,_that.otp,_that.otpSent,_that.isSubmitting,_that.failure,_that.successUser);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String phoneNumber,  String otp,  bool otpSent,  bool isSubmitting,  ApiFailure? failure,  AuthUser? successUser)  $default,) {final _that = this;
switch (_that) {
case _LoginState():
return $default(_that.phoneNumber,_that.otp,_that.otpSent,_that.isSubmitting,_that.failure,_that.successUser);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String phoneNumber,  String otp,  bool otpSent,  bool isSubmitting,  ApiFailure? failure,  AuthUser? successUser)?  $default,) {final _that = this;
switch (_that) {
case _LoginState() when $default != null:
return $default(_that.phoneNumber,_that.otp,_that.otpSent,_that.isSubmitting,_that.failure,_that.successUser);case _:
  return null;

}
}

}

/// @nodoc


class _LoginState implements LoginState {
  const _LoginState({required this.phoneNumber, required this.otp, required this.otpSent, required this.isSubmitting, this.failure, this.successUser});
  

@override final  String phoneNumber;
@override final  String otp;
@override final  bool otpSent;
@override final  bool isSubmitting;
@override final  ApiFailure? failure;
@override final  AuthUser? successUser;

/// Create a copy of LoginState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LoginStateCopyWith<_LoginState> get copyWith => __$LoginStateCopyWithImpl<_LoginState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LoginState&&(identical(other.phoneNumber, phoneNumber) || other.phoneNumber == phoneNumber)&&(identical(other.otp, otp) || other.otp == otp)&&(identical(other.otpSent, otpSent) || other.otpSent == otpSent)&&(identical(other.isSubmitting, isSubmitting) || other.isSubmitting == isSubmitting)&&(identical(other.failure, failure) || other.failure == failure)&&(identical(other.successUser, successUser) || other.successUser == successUser));
}


@override
int get hashCode => Object.hash(runtimeType,phoneNumber,otp,otpSent,isSubmitting,failure,successUser);

@override
String toString() {
  return 'LoginState(phoneNumber: $phoneNumber, otp: $otp, otpSent: $otpSent, isSubmitting: $isSubmitting, failure: $failure, successUser: $successUser)';
}


}

/// @nodoc
abstract mixin class _$LoginStateCopyWith<$Res> implements $LoginStateCopyWith<$Res> {
  factory _$LoginStateCopyWith(_LoginState value, $Res Function(_LoginState) _then) = __$LoginStateCopyWithImpl;
@override @useResult
$Res call({
 String phoneNumber, String otp, bool otpSent, bool isSubmitting, ApiFailure? failure, AuthUser? successUser
});


@override $ApiFailureCopyWith<$Res>? get failure;@override $AuthUserCopyWith<$Res>? get successUser;

}
/// @nodoc
class __$LoginStateCopyWithImpl<$Res>
    implements _$LoginStateCopyWith<$Res> {
  __$LoginStateCopyWithImpl(this._self, this._then);

  final _LoginState _self;
  final $Res Function(_LoginState) _then;

/// Create a copy of LoginState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? phoneNumber = null,Object? otp = null,Object? otpSent = null,Object? isSubmitting = null,Object? failure = freezed,Object? successUser = freezed,}) {
  return _then(_LoginState(
phoneNumber: null == phoneNumber ? _self.phoneNumber : phoneNumber // ignore: cast_nullable_to_non_nullable
as String,otp: null == otp ? _self.otp : otp // ignore: cast_nullable_to_non_nullable
as String,otpSent: null == otpSent ? _self.otpSent : otpSent // ignore: cast_nullable_to_non_nullable
as bool,isSubmitting: null == isSubmitting ? _self.isSubmitting : isSubmitting // ignore: cast_nullable_to_non_nullable
as bool,failure: freezed == failure ? _self.failure : failure // ignore: cast_nullable_to_non_nullable
as ApiFailure?,successUser: freezed == successUser ? _self.successUser : successUser // ignore: cast_nullable_to_non_nullable
as AuthUser?,
  ));
}

/// Create a copy of LoginState
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
}/// Create a copy of LoginState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AuthUserCopyWith<$Res>? get successUser {
    if (_self.successUser == null) {
    return null;
  }

  return $AuthUserCopyWith<$Res>(_self.successUser!, (value) {
    return _then(_self.copyWith(successUser: value));
  });
}
}

// dart format on
