import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/domain/failures/api_failure.dart';
import '../../../../core/infrastructure/network/api_client.dart';
import '../../../../core/infrastructure/network/dio_error_handler.dart';
import '../../domain/entities/job.dart';
import '../../domain/entities/job_application.dart';
import '../../domain/repositories/i_jobs_repository.dart';
import '../dtos/job_application_dto.dart';
import '../dtos/job_dto.dart';

@LazySingleton(as: IJobsRepository)
class JobsRepository implements IJobsRepository {
  final ApiClient _apiClient;

  JobsRepository(this._apiClient);

  @override
  Future<Either<ApiFailure, List<Job>>> getJobs({
    required int page,
    required int limit,
  }) async {
    try {
      final response = await _apiClient.get(
        '/jobs',
        queryParameters: {'page': page, 'limit': limit},
      );
      final jobsJson = response.data['jobs'] as List<dynamic>;
      final jobs = jobsJson
          .map((j) => JobDto.fromJson(j as Map<String, dynamic>).toDomain())
          .toList();
      return right(jobs);
    } on DioException catch (e) {
      return DioErrorHandler.handleError(e);
    } catch (e, st) {
      debugPrint('JobsRepository.getJobs error: $e\n$st');
      return left(ApiFailure.unknown(e.toString()));
    }
  }

  @override
  Future<Either<ApiFailure, Job>> getJobDetails(String jobId) async {
    try {
      final response = await _apiClient.get('/jobs/$jobId');
      final job =
          JobDto.fromJson(response.data['job'] as Map<String, dynamic>)
              .toDomain();
      return right(job);
    } on DioException catch (e) {
      return DioErrorHandler.handleError(e);
    } catch (e, st) {
      debugPrint('JobsRepository.getJobDetails error: $e\n$st');
      return left(ApiFailure.unknown(e.toString()));
    }
  }

  @override
  Future<Either<ApiFailure, JobApplication>> applyToJob(String jobId) async {
    try {
      final response = await _apiClient.post('/jobs/$jobId/apply');
      final application = JobApplicationDto.fromJson(
        response.data['application'] as Map<String, dynamic>,
      ).toDomain();
      return right(application);
    } on DioException catch (e) {
      return DioErrorHandler.handleError(e);
    } catch (e, st) {
      debugPrint('JobsRepository.applyToJob error: $e\n$st');
      return left(ApiFailure.unknown(e.toString()));
    }
  }

  @override
  Future<Either<ApiFailure, List<JobApplication>>> getMyApplications() async {
    try {
      final response = await _apiClient.get('/jobs/my-applications');
      final appsJson = response.data['applications'] as List<dynamic>;
      final apps = appsJson
          .map((j) =>
              JobApplicationDto.fromJson(j as Map<String, dynamic>).toDomain())
          .toList();
      return right(apps);
    } on DioException catch (e) {
      return DioErrorHandler.handleError(e);
    } catch (e, st) {
      debugPrint('JobsRepository.getMyApplications error: $e\n$st');
      return left(ApiFailure.unknown(e.toString()));
    }
  }
}
