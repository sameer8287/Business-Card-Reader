import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class Analysis extends ConsumerStatefulWidget {
  const Analysis({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _HomeState();
}

class _HomeState extends ConsumerState<Analysis> {

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: Text("Analysis"),
      ),
    );
  }
}