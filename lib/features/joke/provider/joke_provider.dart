import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_api/core/shared_provider/shared_providers.dart';
import 'package:riverpod_api/features/joke/data/api/joke_api.dart';
import 'package:riverpod_api/features/joke/data/repository/joke_repository.dart';

final jokeApiProvider = Provider<JokeApi>((ref) {
  return JokeApi(ref.read(dioClientProvider));
});

final jokeRepositoryProvider = Provider<JokeRepository>((ref) {
  return JokeRepository(ref.read(jokeApiProvider));
});
