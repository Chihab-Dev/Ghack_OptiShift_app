// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:dartz/dartz.dart';
import 'package:ghack_app/core/error/failure.dart';
import 'package:ghack_app/data/data_source/remote_data_source.dart';
import 'package:ghack_app/data/network/network_info.dart';
import 'package:ghack_app/domain/entities/delivery_man.dart';
import 'package:ghack_app/domain/entities/delivery_request.dart';
import 'package:ghack_app/domain/entities/feedback.dart';
import 'package:ghack_app/domain/entities/user.dart';
import 'package:ghack_app/domain/repository/repository.dart';

class RepositoryImpl implements Repository {
  final RemoteDataSource _remoteDataSource;
  final NetworkInfo _networkInfo;

  RepositoryImpl(this._remoteDataSource, this._networkInfo);

  @override
  Future<Either<Failure, void>> addFeedback(Feedback feedback, String deliveryId) async {
    if (await _networkInfo.isConnected()) {
      try {
        final result = await _remoteDataSource.addFeedback(feedback, deliveryId);
        return right(result);
      } catch (excpetion) {
        print(excpetion.toString());
        return left(Failure(excpetion.hashCode, 'error add Feedback'));
      }
    } else {
      return left(Failure(404, 'No internet connection'));
    }
  }

  @override
  Future<Either<Failure, String>> checkDeliveryRoute(String deliveryId) async {
    if (await _networkInfo.isConnected()) {
      try {
        final result = await _remoteDataSource.checkDeliveryRoute(deliveryId);
        return right(result);
      } catch (excpetion) {
        print(excpetion.toString());
        return left(Failure(excpetion.hashCode, 'error checkDeliveryRoute'));
      }
    } else {
      return left(Failure(404, 'No internet connection'));
    }
  }

  @override
  Future<Either<Failure, String>> loginWithEmailAndPassword(String email, String password) async {
    if (await _networkInfo.isConnected()) {
      try {
        final result = await _remoteDataSource.loginWithEmailAndPassword(email, password);
        return right(result);
      } catch (excpetion) {
        print(excpetion.toString());
        return left(Failure(excpetion.hashCode, 'error loginWithEmailAndPassword'));
      }
    } else {
      return left(Failure(404, 'No internet connection'));
    }
  }

  @override
  Future<Either<Failure, String>> registerWithEmailAndPassword(User user) async {
    // TODO: implement registerWithEmailAndPassword
    if (await _networkInfo.isConnected()) {
      try {
        final result = await _remoteDataSource.registerWithEmailAndPassword(user);
        return right(result);
      } catch (excpetion) {
        print(excpetion.toString());
        return left(Failure(excpetion.hashCode, 'error registerWithEmailAndPassword'));
      }
    } else {
      return left(Failure(404, 'No internet connection'));
    }
  }

  @override
  Future<Either<Failure, void>> requestToDeliveryProduct(DeliveryMan deliveryMan, String deliveryId) async {
    if (await _networkInfo.isConnected()) {
      try {
        final result = await _remoteDataSource.requestToDeliveryProduct(deliveryMan, deliveryId);
        return right(result);
      } catch (excpetion) {
        print(excpetion.toString());
        return left(Failure(excpetion.hashCode, 'error requestToDeliveryProduct'));
      }
    } else {
      return left(Failure(404, 'No internet connection'));
    }
  }

  @override
  Future<Either<Failure, void>> updateDeliveryState(
      DeliveryRequestState deliveryRequestState, String deliveryId) async {
    // TODO: implement updateDeliveryState
    if (await _networkInfo.isConnected()) {
      try {
        final result = await _remoteDataSource.updateDeliveryState(deliveryRequestState, deliveryId);
        return right(result);
      } catch (excpetion) {
        print(excpetion.toString());
        return left(Failure(excpetion.hashCode, 'error updateDeliveryState'));
      }
    } else {
      return left(Failure(404, 'No internet connection'));
    }
  }
}
