// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'job_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_JobDto _$JobDtoFromJson(Map<String, dynamic> json) => _JobDto(
  id: json['id'] as String,
  title: json['title'] as String,
  company: json['company'] as String,
  description: json['description'] as String,
  location: json['location'] as String,
  salary: json['salary'] as String,
  requirements: (json['requirements'] as List<dynamic>)
      .map((e) => e as String)
      .toList(),
  postedDate: DateTime.parse(json['postedDate'] as String),
  applicantsCount: (json['applicantsCount'] as num).toInt(),
  status: json['status'] as String,
  hasApplied: json['hasApplied'] as bool? ?? false,
);

Map<String, dynamic> _$JobDtoToJson(_JobDto instance) => <String, dynamic>{
  'id': instance.id,
  'title': instance.title,
  'company': instance.company,
  'description': instance.description,
  'location': instance.location,
  'salary': instance.salary,
  'requirements': instance.requirements,
  'postedDate': instance.postedDate.toIso8601String(),
  'applicantsCount': instance.applicantsCount,
  'status': instance.status,
  'hasApplied': instance.hasApplied,
};
