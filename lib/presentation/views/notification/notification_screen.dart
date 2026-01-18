import 'package:flutter/material.dart';

import '../../../app/common/common.dart';

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({super.key});

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _Constant {
  String emptyData = 'Bạn chưa có thông báo';
}

class _NotificationScreenState extends State<NotificationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Thông báo',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        backgroundColor: AppColor.primary,
      ),
      body: RefreshIndicator(
        onRefresh: () async {},
        child: Center(
          child: Column(
            spacing: NumberConstant.basePadding,
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Icon(Icons.notifications, color: Colors.grey, size: 50,),
              Text(_Constant().emptyData, style: TextStyle(color: AppColor.textSecondary),),
            ],
          ),
        ),
        // child: ListView(
        //   children: <Widget>[
        //     ListView.separated(
        //       itemBuilder: (BuildContext context, int index) {
        //         return ListTile(title: Text('Item $index'));
        //       },
        //       separatorBuilder: (BuildContext context, int index) {
        //         return Divider(color: AppColor.disable);
        //       },
        //       itemCount: 3,
        //       shrinkWrap: true,
        //       physics: NeverScrollableScrollPhysics(),
        //     ),
        //   ],
        // ),
      ),
    );
  }
}

// class _NotificationScreenState extends State<NotificationScreen> {
//   @override
//   Widget build(BuildContext context) {
//     return LayoutBuilder(
//       builder: (context, constraints) => RefreshIndicator(
//         onRefresh: () async {},
//         child: SingleChildScrollView(
//           physics: AlwaysScrollableScrollPhysics(),
//           child: ConstrainedBox(
//             constraints: BoxConstraints(
//               minWidth: constraints.maxWidth,
//               minHeight: constraints.maxHeight,
//             ),
//             child: Text("My Widget"),
//           ),
//         ),
//       ),
//     );
//   }
// }
