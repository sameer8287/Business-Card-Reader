import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class More extends ConsumerStatefulWidget {
  const More({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _HomeState();
}

class _HomeState extends ConsumerState<More> {

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: Text("Profile"),
      ),
    );
  }
}