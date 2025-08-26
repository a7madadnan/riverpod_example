import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_api/features/joke/data/models/joke_model.dart';
import 'package:riverpod_api/features/joke/provider/joke_state_provider.dart';

import 'package:riverpod_api/features/joke/widgets/refresh_joke.dart';

class JokePage extends ConsumerWidget {
  const JokePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Jokes'),
      ),
      body: ref.watch(jokeProvider).when(
        data: (JokeModel data) {
          return Center(
            child: Container(
              decoration: const BoxDecoration(
                color: Colors.red,
              ),
              child: Text(data.joke ?? ''),
            ),
          );
        },
        error: (Object error, StackTrace stackTrace) {
          return Center(
            child: Text(error.toString()),
          );
        },
        loading: () {
          return const Center(
            child: CircularProgressIndicator(),
          );
        },
      ),
      floatingActionButton: const RefreshJoke(),
    );
  }
}
