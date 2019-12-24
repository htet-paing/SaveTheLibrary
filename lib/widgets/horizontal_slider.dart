import 'package:flutter/material.dart';
import 'package:save_the_library/widgets/type_def.dart';

class HorizontalSlider<T> extends StatelessWidget {
  final String title;
  final List<T> items;
  final ItemBuilder<T> itemBuilder;
  const HorizontalSlider({
    Key key,
    @required this.items,
    @required this.itemBuilder,
    this.title = '',
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(children: <Widget>[
      Align(alignment: Alignment.centerLeft, child: Text("${this.title}")),
      Column(
        children: <Widget>[
          Container(
            margin: EdgeInsets.symmetric(vertical: 20.0),
            height: 210.0,
            child: ListView.builder(
              itemCount: items.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, int index) {
                return this.itemBuilder(context, items[index]);
              },
            ),
          ),
        ],
      ),
    ]);
  }
}
