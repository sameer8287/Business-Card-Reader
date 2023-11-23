import 'package:starter_pack/screens/analysis/analysis.dart';
import 'package:starter_pack/screens/home/home.dart';
import 'package:starter_pack/screens/more/more.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class LandingHome extends ConsumerStatefulWidget {
  const LandingHome({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _LandingHomeState();
}

class _LandingHomeState extends ConsumerState<LandingHome> {

  @override
  Widget build(BuildContext context) {
    return const DefaultTabController(
      length: 3,
      child: Scaffold(
        body: TabBarView(
          children: [
            Home(),
            Analysis(),
            More()
          ],
        ),
        bottomNavigationBar: TabBar(
          tabs: [
            Tab(
              icon: Icon(Icons.home),
              text: 'Home',
            ),
            Tab(
              icon: Icon(Icons.analytics),
              text: 'Analysis',
            ),
            Tab(
              icon: Icon(Icons.more_vert),
              text: 'More',
            )
          ],
        ),
      ),
    );
  }
}