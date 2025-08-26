import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_api/features/joke/provider/joke_provider.dart';

final jokeProvider = FutureProvider((ref) async {
  return await ref.read(jokeRepositoryProvider).fetchJoke();
});
