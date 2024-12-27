import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class ViewBase extends HookConsumerWidget {
  final Widget child;
  const ViewBase({required this.child, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("テストAPP"),
      ),
      body: child,
    );
  }
}
