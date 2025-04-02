import 'package:weather_application/core/data/storage_service.dart';

abstract class HomeUseCase {}

class HomeUseCaseImpl implements HomeUseCase {
  final StorageService _storageService;

  HomeUseCaseImpl({
    required StorageService storageService,
  }) : _storageService = storageService;
}
