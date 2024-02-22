import 'package:dartz/dartz.dart';
import 'package:ghack_app/core/error/failure.dart';
import 'package:ghack_app/domain/repository/repository.dart';
import 'package:ghack_app/domain/usecase/base_usecase.dart';

import '../entities/feedback.dart';

class AddFeedbackUseCase extends BaseUseCase<void, AddFeedbackParameters> {
  Repository repository;
  AddFeedbackUseCase({
    required this.repository,
  });
  @override
  Future<Either<Failure, void>> call(AddFeedbackParameters parameters) async {
    return await repository.addFeedback(parameters.feedback, parameters.deliveryId);
  }
}

class AddFeedbackParameters {
  Feedback feedback;
  String deliveryId;
  AddFeedbackParameters({
    required this.feedback,
    required this.deliveryId,
  });
}
