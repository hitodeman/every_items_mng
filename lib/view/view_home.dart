import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class ViewHome extends HookConsumerWidget {
  const ViewHome({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      children: [
        const Text("HomeView"),
        // Text("COUNT : ${ref.watch(counterProvider).count}"),
        ElevatedButton(
          onPressed: () => {},
          child: const Icon(Icons.add),
        ),
        ElevatedButton(
          onPressed: () => context.push('/sub'),
          child: const Text('次のページ'),
        ),
      ],
    );
  }
}
