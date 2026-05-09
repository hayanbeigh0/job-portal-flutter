// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'job_application_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_JobApplicationDto _$JobApplicationDtoFromJson(Map<String, dynamic> json) =>
    _JobApplicationDto(
      id: json['id'] as String,
      jobId: json['jobId'] as String,
      userId: json['userId'] as String,
      status: json['status'] as String,
      appliedAt: DateTime.parse(json['appliedAt'] as String),
    );

Map<String, dynamic> _$JobApplicationDtoToJson(_JobApplicationDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'jobId': instance.jobId,
      'userId': instance.userId,
      'status': instance.status,
      'appliedAt': instance.appliedAt.toIso8601String(),
    };
