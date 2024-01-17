// import 'package:flutter/material.dart';
// import 'package:saffron_ias_flutter_mobile/widgets/video_thumbnail_card.dart';
// // import 'package:saffron_ias_flutter_mobile/widgets/video_thumbnail_card.dart';
// import 'package:saffron_ias_flutter_mobile/widgets/video_widget_in_playlist.dart';

// class MyPlayGroundScreen extends StatefulWidget {
//   const MyPlayGroundScreen({super.key});

//   @override
//   State<MyPlayGroundScreen> createState() => _MyPlayGroundScreenState();
// }

// class _MyPlayGroundScreenState extends State<MyPlayGroundScreen> {
//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//       child: Scaffold(
//         body: Column(
//           children: [
//             Container(
//               color: const Color.fromARGB(255, 99, 74, 1),
//               padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
//               child: ListTile(
//                 onTap: () {
//                   Navigator.pushNamed(context, '/pdf_viewer_screen');
//                 },
//                 style: ListTileStyle.list,
//                 leading: Image.asset(
//                   "assets/images/pdf_logo.png",
//                   height: 80,
//                   width: 70,
//                 ),
//                 title: const Text(
//                   "Previous year Prelims Paper",
//                   style: TextStyle(color: Colors.white),
//                 ),
//                 trailing: const Icon(
//                   Icons.download,
//                   color: Colors.white,
//                 ),
//               ),
//             ),
//             Expanded(
//               child: ListView.builder(
//                   itemCount: 10,
//                   scrollDirection: Axis.vertical,
//                   itemBuilder: (context, index) {
//                     return const VideoWidgetInPlayList();
//                   }),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';

class MyPlayGroundScreen extends StatefulWidget {
  const MyPlayGroundScreen({super.key});

  @override
  State<MyPlayGroundScreen> createState() => _MyPlayGroundScreenState();
}

class _MyPlayGroundScreenState extends State<MyPlayGroundScreen>
    with TickerProviderStateMixin {
  // TabController tabController = TabController(
  //     initialIndex: 0, length: 5, vsync: );

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        // appBar: AppBar(
        //   title: const Text('Primary and secondary TabBar'),
        //   bottom: const TabBar(
        //     dividerColor: Colors.transparent,
        //     // controller: tabController,
        //     tabs: <Widget>[
        //       Tab(
        //         text: 'Flights',
        //         icon: Icon(Icons.flight),
        //       ),
        //       Tab(
        //         text: 'Trips',
        //         icon: Icon(Icons.luggage),
        //       ),
        //       Tab(
        //         text: 'Explore',
        //         icon: Icon(Icons.explore),
        //       ),
        //     ],
        //   ),
        // ),
        body: Text("data"));
  }
}

// class NestedTabBar extends StatefulWidget {
//   const NestedTabBar(this.outerTab, {super.key});

//   final String outerTab;

//   @override
//   State<NestedTabBar> createState() => _NestedTabBarState();
// }

// class _NestedTabBarState extends State<NestedTabBar>
//     with TickerProviderStateMixin {
//   late final TabController _tabController;

//   @override
//   void initState() {
//     super.initState();
//     _tabController = TabController(length: 2, vsync: this);
//   }

//   @override
//   void dispose() {
//     _tabController.dispose();
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: <Widget>[
//         TabBar.secondary(
//           controller: _tabController,
//           tabs: const <Widget>[
//             Tab(text: 'Overview'),
//             Tab(text: 'Specifications'),
//           ],
//         ),
//         Expanded(
//           child: TabBarView(
//             controller: _tabController,
//             children: <Widget>[
//               Card(
//                 margin: const EdgeInsets.all(16.0),
//                 child: Center(child: Text('${widget.outerTab}: Overview tab')),
//               ),
//               Card(
//                 margin: const EdgeInsets.all(16.0),
//                 child: Center(
//                     child: Text('${widget.outerTab}: Specifications tab')),
//               ),
//             ],
//           ),
//         ),
//       ],
//     );
//   }
// }
