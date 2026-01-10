import 'package:flutter/material.dart';

import '../../../app/app_component.dart';

class TreatmentScreen extends StatefulWidget {
  const TreatmentScreen({super.key});

  @override
  State<TreatmentScreen> createState() => _TreatmentScreenState();
}

class _TreatmentScreenState extends State<TreatmentScreen> {
  @override
  Widget build(BuildContext context) {
    return NestedScrollView(
      headerSliverBuilder:
          (BuildContext context, bool innerBoxIsScrolled) {
        return <Widget>[
          SliverAppBar(
            title: Text('NestedScrollView Example'),
            floating: true,
            pinned: true,
            expandedHeight: 200.0,
            flexibleSpace: FlexibleSpaceBar(
              background: Image.network(
                'https://via.placeholder.com/400x200',
                fit: BoxFit.cover,
              ),
            ),
          ),
        ];
      },
      body: ListView.builder(
        itemCount: 50,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(title: Text('Item $index'));
        },
      ),
    );
  }
}
