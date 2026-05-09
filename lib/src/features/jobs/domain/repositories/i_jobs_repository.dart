import 'package:dartz/dartz.dart';

import '../../../../core/domain/failures/api_failure.dart';
import '../entities/job.dart';
import '../entities/job_application.dart';

abstract class IJobsRepository {
  Future<Either<ApiFailure, List<Job>>> getJobs({
    required int page,
    required int limit,
  });

  Future<Either<ApiFailure, Job>> getJobDetails(String jobId);

  Future<Either<ApiFailure, JobApplication>> applyToJob(String jobId);

  Future<Either<ApiFailure, List<JobApplication>>> getMyApplications();
}
