import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class ViewSetting extends HookConsumerWidget {
  const ViewSetting({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      children: [
        const Text("ViewSetting"),
        // Text("COUNT : ${ref.watch(counterProvider).count}"),
        ElevatedButton(
          onPressed: () => {},
          child: const Icon(Icons.add),
        ),
        ElevatedButton(
          onPressed: () => context.pop(),
          child: const Text('前のページ'),
        )
      ],
    );
  }
}
