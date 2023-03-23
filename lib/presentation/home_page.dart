// import 'dart:async';

// import 'package:accordion/accordion.dart';
// import 'package:accordion/controllers.dart';
// import 'package:draggable_home/draggable_home.dart';
// import 'package:flutter/material.dart';
// import 'package:gap/gap.dart';
// import 'package:hooks_riverpod/hooks_riverpod.dart';
// import 'package:trip_tonic/extensions/context_extension.dart';

// // 下記タブ確認用のサンプル画面
// class HomePage extends StatelessWidget {
//   const HomePage({super.key});

//   static const pageName = 'home';
//   static const pagePath = '/home';

//   @override
//   Widget build(BuildContext context) {
//     return DraggableHome(
//       title: Column(
//         children: const [
//           Text(
//             '旅行プラン',
//             style: TextStyle(
//               fontSize: 16,
//               color: Colors.white,
//               fontWeight: FontWeight.w700,
//             ),
//           ),
//           Text(
//             '~ 沖縄県 ~',
//             style: TextStyle(
//               fontSize: 13,
//               color: Colors.white,
//               fontWeight: FontWeight.w700,
//             ),
//           ),
//         ],
//       ),
//       actions: [
//         IconButton(
//           onPressed: () {},
//           icon: const Icon(
//             Icons.settings,
//             color: Colors.white,
//           ),
//         ),
//       ],
//       headerWidget: Stack(
//         fit: StackFit.passthrough,
//         children: [
//           headerWidget(context),
//           Padding(
//             padding: const EdgeInsets.all(16),
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: const [
//                 Text(
//                   '2/15 ~ 2/17',
//                   style: TextStyle(
//                     color: Colors.white,
//                     fontSize: 16,
//                     fontWeight: FontWeight.w700,
//                   ),
//                 ),
//                 Gap(8),
//                 Text(
//                   '沖縄県',
//                   style: TextStyle(
//                     color: Colors.white,
//                     fontSize: 24,
//                     fontWeight: FontWeight.w700,
//                     fontStyle: FontStyle.italic,
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ],
//       ),
//       headerBottomBar: headerBottomBarWidget(),
//       body: const [
//         // listView(),
//         SelectableText(
//           '\n\n[神奈川の小旅行]\n\n1日目\n\n10:00: カフェテラスナギサ\n住所：神奈川県逗子市逗子１丁目１１−１３\n交通手段と料金：最寄り駅から徒歩10分\n\n12:00: ランチ\nおすすめ：湘南海岸で買ったお弁当を持って逗子海岸でピクニック\n住所：逗子海岸（ピクニック場所）\n交通手段：徒歩\n料金：お弁当代\n\n14:00: 逗子城跡\n住所：神奈川県逗子市城山町\n交通手段と料金：最寄り駅からバス or タクシー利用\n\n16:00: 鎌倉大仏\n住所：神奈川県鎌倉市大仏殿町４６−１\n交通手段と料金：バス or タクシー利用\n\n18:00: 旅館で夕食＆温泉入り放題\nおすすめ：温泉宿「かいいずどん」（鎌倉市由比ガ浜３丁目１５−７）\n交通手段：タクシー or 歩いて\n料金：宿泊料金に含まれる\n\n2日目\n\n9:00: オロチョンラーメン利しり\n住所：神奈川県平塚市公所２８２−８\n交通手段と料金：タクシー or バス(N130) + 徒歩\n\n11:00: 平塚市美術館\n住所：神奈川県平塚市紅谷町１丁目２−２\n交通手段と料金：タクシー or 徒歩\n\n13:00: ランチ（平塚駅周辺のお店）\nおすすめ：アンデルセンパン\n住所：神奈川県平塚市紅谷町１−３−２４（徒歩3分）\n交通手段：徒歩\n料金：食事代\n\n15:00: 平塚市平和記念博物館\n住所：神奈川県平塚市紅谷町６丁目１９−１９\n交通手段と料金：タクシー or バス(N130)\n\n17:00: 帰路\nおすすめ：みなとみらいで夜景見物\n交通手段：最寄り駅から電車\n料金：交通費',
//         ),
//       ],
//       fullyStretchable: true,
//       expandedBody: const AcordionTest(),
//       backgroundColor: Colors.white,
//       appBarColor: context.theme.primary.withOpacity(0.6),
//     );
//   }

//   Row headerBottomBarWidget() {
//     return Row(
//       mainAxisAlignment: MainAxisAlignment.end,
//       children: const [
//         Icon(
//           Icons.settings,
//           color: Colors.white,
//         ),
//       ],
//     );
//   }

//   Widget headerWidget(BuildContext context) {
//     return Image.network(
//       'https://images.unsplash.com/photo-1648130024551-8e71ba702356?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=987&q=80',
//       fit: BoxFit.cover,
//     );
//   }

//   ListView listView() {
//     return ListView.builder(
//       padding: const EdgeInsets.only(),
//       physics: const NeverScrollableScrollPhysics(),
//       itemCount: 20,
//       shrinkWrap: true,
//       itemBuilder: (context, index) => Card(
//         color: Colors.white70,
//         child: ListTile(
//           leading: CircleAvatar(
//             child: Text('$index'),
//           ),
//           title: const Text('Title'),
//           subtitle: const Text('Subtitile'),
//         ),
//       ),
//     );
//   }
// }

// /// ログイン処理状態
// final loginStateProvider = StateProvider<AsyncValue<void>>(
//   (_) => const AsyncValue.data(null),
// );

// /// ユーザーサービスプロバイダー
// final userServiceProvider = Provider(
//   UserService.new,
// );

// class UserService {
//   UserService(this.ref);

//   final Ref ref;

//   Future<void> login() async {
//     ref.read(loginStateProvider.notifier)
//       ..state = const AsyncValue.loading()
//       ..state = await AsyncValue.guard(() async {
//         await Future<void>.delayed(const Duration(seconds: 3));
//       });
//   }
// }

// class AcordionTest extends StatelessWidget {
//   const AcordionTest({super.key});

//   final _headerStyle = const TextStyle(
//     color: Color(0xffffffff),
//     fontSize: 15,
//     fontWeight: FontWeight.bold,
//   );
//   final _contentStyleHeader = const TextStyle(
//     color: Color(0xff999999),
//     fontSize: 14,
//     fontWeight: FontWeight.w700,
//   );
//   final _contentStyle = const TextStyle(
//     color: Color(0xff999999),
//     fontSize: 14,
//     fontWeight: FontWeight.normal,
//   );
//   final _loremIpsum =
//       '''Lorem ipsum is typically a corrupted version of 'De finibus bonorum et malorum', a 1st century BC text by the Roman statesman and philosopher Cicero, with words altered, added, and removed to make it nonsensical and improper Latin.''';

//   @override
//   Scaffold build(BuildContext context) => Scaffold(
//         backgroundColor: Colors.blueGrey[100],
//         appBar: AppBar(
//           title: const Text('Accordion'),
//         ),
//         body: Accordion(
//           maxOpenSections: 2,
//           headerBackgroundColorOpened: Colors.black54,
//           scaleWhenAnimating: true,
//           openAndCloseAnimation: true,
//           headerPadding:
//               const EdgeInsets.symmetric(vertical: 7, horizontal: 15),
//           sectionOpeningHapticFeedback: SectionHapticFeedback.heavy,
//           sectionClosingHapticFeedback: SectionHapticFeedback.light,
//           children: [
//             AccordionSection(
//               isOpen: true,
//               leftIcon: const Icon(Icons.insights_rounded, color: Colors.white),
//               headerBackgroundColor: Colors.black,
//               headerBackgroundColorOpened: Colors.red,
//               header: Text('Introduction', style: _headerStyle),
//               content: Text(_loremIpsum, style: _contentStyle),
//               contentHorizontalPadding: 20,
//               contentBorderWidth: 1,
//               // onOpenSection: () => print('onOpenSection ...'),
//               // onCloseSection: () => print('onCloseSection ...'),
//             ),
//             AccordionSection(
//               isOpen: true,
//               leftIcon: const Icon(Icons.compare_rounded, color: Colors.white),
//               header: Text('Nested Accordion', style: _headerStyle),
//               contentBorderColor: const Color(0xffffffff),
//               headerBackgroundColorOpened: Colors.amber,
//               content: Accordion(
//                 maxOpenSections: 1,
//                 headerBackgroundColorOpened: Colors.black54,
//                 headerPadding:
//                     const EdgeInsets.symmetric(vertical: 7, horizontal: 15),
//                 children: [
//                   AccordionSection(
//                     isOpen: true,
//                     leftIcon:
//                         const Icon(Icons.insights_rounded, color: Colors.white),
//                     headerBackgroundColor: Colors.black38,
//                     headerBackgroundColorOpened: Colors.black54,
//                     header: Text('Nested Section #1', style: _headerStyle),
//                     content: Text(_loremIpsum, style: _contentStyle),
//                     contentHorizontalPadding: 20,
//                     contentBorderColor: Colors.black54,
//                   ),
//                   AccordionSection(
//                     isOpen: true,
//                     leftIcon:
//                         const Icon(Icons.compare_rounded, color: Colors.white),
//                     header: Text('Nested Section #2', style: _headerStyle),
//                     headerBackgroundColor: Colors.black38,
//                     headerBackgroundColorOpened: Colors.black54,
//                     contentBorderColor: Colors.black54,
//                     content: Row(
//                       children: [
//                         const Icon(
//                           Icons.compare_rounded,
//                           size: 120,
//                           color: Colors.orangeAccent,
//                         ),
//                         Flexible(
//                           child: Text(_loremIpsum, style: _contentStyle),
//                         ),
//                       ],
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//             AccordionSection(
//               leftIcon: const Icon(Icons.food_bank, color: Colors.white),
//               header: Text('Company Info', style: _headerStyle),
//               content: DataTable(
//                 sortColumnIndex: 1,
//                 dataRowHeight: 40,
//                 columns: [
//                   DataColumn(
//                     label: Text('ID', style: _contentStyleHeader),
//                     numeric: true,
//                   ),
//                   DataColumn(
//                     label: Text('Description', style: _contentStyleHeader),
//                   ),
//                   DataColumn(
//                     label: Text('Price', style: _contentStyleHeader),
//                     numeric: true,
//                   ),
//                 ],
//                 rows: [
//                   DataRow(
//                     cells: [
//                       DataCell(
//                         Text(
//                           '1',
//                           style: _contentStyle,
//                           textAlign: TextAlign.right,
//                         ),
//                       ),
//                       DataCell(Text('Fancy Product', style: _contentStyle)),
//                       DataCell(
//                         Text(
//                           r'$ 199.99',
//                           style: _contentStyle,
//                           textAlign: TextAlign.right,
//                         ),
//                       )
//                     ],
//                   ),
//                   DataRow(
//                     cells: [
//                       DataCell(
//                         Text(
//                           '2',
//                           style: _contentStyle,
//                           textAlign: TextAlign.right,
//                         ),
//                       ),
//                       DataCell(Text('Another Product', style: _contentStyle)),
//                       DataCell(
//                         Text(
//                           r'$ 79.00',
//                           style: _contentStyle,
//                           textAlign: TextAlign.right,
//                         ),
//                       )
//                     ],
//                   ),
//                   DataRow(
//                     cells: [
//                       DataCell(
//                         Text(
//                           '3',
//                           style: _contentStyle,
//                           textAlign: TextAlign.right,
//                         ),
//                       ),
//                       DataCell(Text('Really Cool Stuff', style: _contentStyle)),
//                       DataCell(
//                         Text(
//                           r'$ 9.99',
//                           style: _contentStyle,
//                           textAlign: TextAlign.right,
//                         ),
//                       )
//                     ],
//                   ),
//                   DataRow(
//                     cells: [
//                       DataCell(
//                         Text(
//                           '4',
//                           style: _contentStyle,
//                           textAlign: TextAlign.right,
//                         ),
//                       ),
//                       DataCell(
//                         Text('Last Product goes here', style: _contentStyle),
//                       ),
//                       DataCell(
//                         Text(
//                           r'$ 19.99',
//                           style: _contentStyle,
//                           textAlign: TextAlign.right,
//                         ),
//                       )
//                     ],
//                   ),
//                 ],
//               ),
//             ),
//             AccordionSection(
//               leftIcon: const Icon(Icons.contact_page, color: Colors.white),
//               header: Text('Contact', style: _headerStyle),
//               content: Wrap(
//                 children: List.generate(
//                   30,
//                   (index) => const Icon(
//                     Icons.contact_page,
//                     size: 30,
//                     color: Color(0xff999999),
//                   ),
//                 ),
//               ),
//             ),
//             AccordionSection(
//               leftIcon: const Icon(Icons.computer, color: Colors.white),
//               header: Text('Jobs', style: _headerStyle),
//               content: const Icon(
//                 Icons.computer,
//                 size: 200,
//                 color: Color(0xff999999),
//               ),
//             ),
//             AccordionSection(
//               leftIcon: const Icon(Icons.movie, color: Colors.white),
//               header: Text('Culture', style: _headerStyle),
//               content:
//                   const Icon(Icons.movie, size: 200, color: Color(0xff999999)),
//             ),
//             AccordionSection(
//               leftIcon: const Icon(Icons.people, color: Colors.white),
//               header: Text('Community', style: _headerStyle),
//               content:
//                   const Icon(Icons.people, size: 200, color: Color(0xff999999)),
//             ),
//             AccordionSection(
//               leftIcon: const Icon(Icons.map, color: Colors.white),
//               header: Text('Map', style: _headerStyle),
//               content:
//                   const Icon(Icons.map, size: 200, color: Color(0xff999999)),
//             ),
//           ],
//         ),
//       );
// } //__


  
